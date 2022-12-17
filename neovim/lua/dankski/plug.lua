
return require('packer').startup(function(use)

  -- Packer can manage itself
  use( 'wbthomason/packer.nvim' )
  use( 'folke/tokyonight.nvim' )

  -- Fuzzy Search
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }

  -- Brackets Autopair
  use { 'windwp/nvim-autopairs' }

  -- startup screen
  use ( 'mhinz/vim-startify' )

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' , opt = true } 
  }

  -- treesitter
  use ('nvim-treesitter/nvim-treesitter', {
    run = ":TSUpdate"
  })

  use( 'nvim-treesitter/playground' )

  -- LSP zero: https://github.com/VonHeikemen/lsp-zero.nvim
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
  
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
  
      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- use('romgrk/nvim-treesitter-context' )
  use( 'tpope/vim-fugitive' )

end)


