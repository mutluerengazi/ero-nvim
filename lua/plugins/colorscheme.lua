return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_enable_italic = false
    vim.cmd.colorscheme('tokyonight-night')
  end
}
