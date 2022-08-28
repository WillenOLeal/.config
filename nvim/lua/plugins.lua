local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer: package manager
  use 'EdenEast/nightfox.nvim' -- Nightfox themes
  use 'folke/tokyonight.nvim' -- Tokyo Night theme
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } -- Status line
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'folke/lsp-colors.nvim' -- LSP colors
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'numToStr/Comment.nvim' -- Comments
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use {
    'L3MON4D3/LuaSnip',
    after = "nvim-cmp",
    requires = { { "rafamadriz/friendly-snippets" } },
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  } -- Sintax highlight
  use 'p00f/nvim-ts-rainbow' -- Bracket highlight
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use {
    'jose-elias-alvarez/null-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    after = "nvim-lspconfig",
  }
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'norcalli/nvim-colorizer.lua'
end)
