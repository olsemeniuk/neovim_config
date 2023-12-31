local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {'phaazon/hop.nvim'},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
  {'nvim-treesitter/nvim-treesitter'},
  {'neovim/nvim-lspconfig'},
  {'sainnhe/everforest'},
  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate'
  },
  {'mattn/emmet-vim'},
  {'nvim-lualine/lualine.nvim'},
  {'m4xshen/autoclose.nvim'},
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'}
  },
  {'goolord/alpha-nvim'},
  { 
    'lukas-reineke/indent-blankline.nvim', 
    main = 'ibl', 
    opts = {} 
  }
})
