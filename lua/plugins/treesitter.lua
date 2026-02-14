return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    -- Parsers to install
    local filetypes = { "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "markdown_inline", "vim", "vimdoc", "rust", "go" }
    
    -- Install parsers
    require('nvim-treesitter').install(filetypes)
    
    -- Enable treesitter highlighting for these filetypes
    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
