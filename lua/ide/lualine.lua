require("lualine").setup({
    options = {
        icons_enabled = false,
        theme='gruvbox_dark', 
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
