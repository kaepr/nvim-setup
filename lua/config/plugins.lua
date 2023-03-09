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

plugins = {
    -- colorscheme
    "RRethy/nvim-base16",

    {
        "ThePrimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require("ide.harpoon")
        end
    },

    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("ide.lualine")
        end
    },

    {
        "nvim-treesitter/nvim-treesitter",  build=":TSUpdate", 
        config = function()
            require("ide.treesitter")
        end 
    },

    {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        dependencies = {{ "nvim-lua/plenary.nvim"  }},
        config = function()
            require("ide.telescope")
        end
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            local telescope_theme = "ivy"
            require("telescope").setup({
                pickers = {
                    git_files = {
                        theme = telescope_theme,
                    },
                    find_files = {
                        theme = telescope_theme,
                    },
                    buffers = {
                        theme = telescope_theme,
                    },
                    help_tags = {
                        theme = telescope_theme,
                    },
                    keymaps = {
                        theme = telescope_theme,
                    },
                    live_grep = {
                        theme = telescope_theme,
                    }
                }
            })
            require("telescope").load_extension("fzf")
        end
    } 

}

require("lazy").setup(plugins)
