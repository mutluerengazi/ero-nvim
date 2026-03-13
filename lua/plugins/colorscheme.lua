-- lua/plugins/rose-pine.lua
return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  config = function()
    require("tokyonight").setup({
      styles = {
        italic = false,
      },
    })
    vim.cmd("colorscheme tokyonight-moon")
  end
}
