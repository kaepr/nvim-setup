local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- colorscheme
    "RRethy/nvim-base16",

    {
        "ThePrimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("ide.harpoon")
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("ide.lualine")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("ide.treesitter")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
    },

    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = { { "nvim-lua/plenary.nvim" } },
        config = function()
            require("ide.telescope-setup")
        end,
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("ide.telescope-fzf")
        end,
    },

    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },             -- Required
            { "williamboman/mason.nvim" },           -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },     -- Required
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "L3MON4D3/LuaSnip" },     -- Required
            { "saadparwaiz1/cmp_luasnip" },
        },
        config = function()
            require("ide.lsp")
        end,
    },

    -- Lisp Support
    "wlangstroth/vim-racket",

    {
        "Olical/conjure",
        config = function()
            vim.g["conjure#filetypes"] = { "clojure", "racket" }
        end
    },

    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },

    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },

    {
        "jez/vim-better-sml",
    },

    {
        "ggandor/leap.nvim",
        dependencies = {
            { "tpope/vim-repeat" },
        },
        config = function()
            require("leap").add_default_mappings()
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },

    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("ide.null-ls-setup")
        end,
    },

    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = false,
                fold_open = "v",      -- icon used for open folds
                fold_closed = ">",    -- icon used for closed folds
                indent_lines = false, -- add an indent guide below the fold icons
                signs = {
                    -- icons / text used for a diagnostic
                    error = "error",
                    warning = "warn",
                    hint = "hint",
                    information = "info",
                },
                use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
            })
        end,
    },
}

require("lazy").setup(plugins)
