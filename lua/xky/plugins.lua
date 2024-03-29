local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}




-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
  use "akinsho/toggleterm.nvim"
  use 'nvim-lualine/lualine.nvim'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  --use 'tpope/vim-surround'
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  --use {'neoclide/coc.nvim', branch = 'release'}
  -- use "lunarvim/colorschemes"
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-telescope/telescope-ui-select.nvim' }


  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }


  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- use "akinsho/bufferline.nvim"
  -- use "moll/vim-bbye"

  -- Git
  use "lewis6991/gitsigns.nvim"

  use {'kevinhwang91/nvim-bqf', ft = 'qf'}

  -- use "ahmedkhalf/project.nvim"

  use 'lewis6991/impatient.nvim'

  use "lukas-reineke/indent-blankline.nvim"
  -- use 'goolord/alpha-nvim'
  use {'kevinhwang91/nvim-hlslens'}

  use 'Vimjas/vim-python-pep8-indent'

  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  -- Markdown preview

  use {
    "folke/zen-mode.nvim",
  }
  -- Lua
  -- use {
  --   "folke/trouble.nvim",
  --   requires = "kyazdani42/nvim-web-devicons",
  --   config = function()
  --     require("trouble").setup {
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       -- refer to the configuration section below
  --     }
  --   end
  -- }
  -- use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- symbols-outline.nvim
  use "simrat39/symbols-outline.nvim"

  use "simrat39/rust-tools.nvim"

  use "mhinz/vim-startify"


  use 'mfussenegger/nvim-dap'
  use 'theHamsta/nvim-dap-virtual-text'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  use 'nvim-telescope/telescope-dap.nvim'
  -- WhichKey
  -- use {
  --    "folke/which-key.nvim",
  --    config = function()
  --      require("xky/whichkey").setup()
  --    end,
  -- }
  --
  use "folke/todo-comments.nvim" -- todo comments

  use {
    'kevincxks/lsp-setup.nvim',
    requires = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    }
  }
  use {
  "ray-x/lsp_signature.nvim",
  }

  use {
    "akinsho/bufferline.nvim", -- tab
    tag = "v1.2.0",
  }



  use "dstein64/vim-startuptime"

  -- use "kevincxks/ccls.nvim"



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
