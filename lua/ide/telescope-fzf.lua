local telescope_theme = "ivy"
local ts = require("telescope")

ts.setup({
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

ts.load_extension("fzf")
