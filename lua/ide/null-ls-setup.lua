local lsp = require("lsp-zero")
local null_ls = require("null-ls")
local null_opts = lsp.build_options("null-ls", {})

null_ls.setup({
    on_attach = function(client, bufnr)
        null_opts.on_attach(client, bufnr)
        ---
        -- you can add other stuff here....
        ---
    end,
    sources = {
        -- Replace these with the tools you have installed
        -- null_ls.builtins.formatting.prettier_eslint,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.eslint_d
    },
})
