-- lua/plugins/rose-pine.lua
return {
  "Mofiqul/dracula.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme('dracula')
  end
}
