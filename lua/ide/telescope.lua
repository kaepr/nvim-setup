local ts = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", ts.find_files, {})
vim.keymap.set("n", "<leader>pg", ts.git_files, {})
vim.keymap.set("n", "<leader>ps", ts.live_grep, {})

