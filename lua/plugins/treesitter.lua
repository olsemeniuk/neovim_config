require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "bash",
    "css",
    "html",
    "markdown",
    "javascript",
    "json",
    "tsx", 
    "typescript", 
    "lua", 
    "go", 
  },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}
