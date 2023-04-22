function SetupTheme(color)
    vim.o.background = "dark"
    -- vim.g["gruvbox_material_transparent_background"] = 1
    vim.g["gruvbox_material_background"] = "hard"
    vim.g["gruvbox_material_foreground"] = "original"
    vim.g["gruvbox_material_disable_italic_comment"] = 0
    vim.g["gruvbox_material_better_performance"] = 1
    vim.g["gruvbox_material_ui_contrast"] = "high"

    color = color or "gruvbox-material"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetupTheme()
