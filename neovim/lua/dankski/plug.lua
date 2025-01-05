-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use) 

  -- Packer
  use("wbthomason/packer.nvim")

  -- Mason: For external tool management
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")

  -- Telescope: Fuzzy Search
  use({
      "nvim-telescope/telescope.nvim",
      tag = "0.1.5",
      branch = "0.1.x",
      requires = { { "nvim-lua/plenary.nvim" } },
  })

  -- statusline
  use ({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' , opt = true } 
  })

  -- startup screen
  use ("mhinz/vim-startify")

  -- Coding Setup: Rust
  use("neovim/nvim-lspconfig")
  use("simrat39/rust-tools.nvim")

  -- Completion framework:
  use 'hrsh7th/nvim-cmp' 

  -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'

  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'

  -- Nord Theme
  use("shaunsingh/nord.nvim")

  -- Gruvbox Theme
  use { "ellisonleao/gruvbox.nvim" }

  -- DAP
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
  use { "leoluz/nvim-dap-go" }
end)
