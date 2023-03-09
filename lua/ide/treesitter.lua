require('nvim-treesitter.configs').setup({
  -- A list of parser names, or "all"
  ensure_installed = { "help", "javascript", "typescript", "c", "lua", "rust" },

  incremental_selection = {enable = true},
  textobjects = {enable = true},
  indent = {enable = false},

  sync_install = false,

  -- Have treesitter CLI installed
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  additional_vim_regex_highlighting = true
})
