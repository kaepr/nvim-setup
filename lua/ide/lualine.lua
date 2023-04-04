require("lualine").setup({
    options = {
        theme = 'gruvbox-material',
        icons_enabled = false,
        section_separators = '',
        component_separators = ''
    },
    sections = {
        lualine_x = {
            {
                require("lazy.status").updates,
                cond = require("lazy.status").has_updates,
                color = { fg = "#ff9e64" },
            },
        },
    },
})
