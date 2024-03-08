local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  
  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
  use {'tanvirtin/monokai.nvim'}

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Undotree
  use {
	  "jiaoshijie/undotree",
	  config = function()
		  require('undotree').setup()
	  end,
	  requires = {
		  "nvim-lua/plenary.nvim",
	  },
  }

  -- Fugitive
  use {'tpope/vim-fugitive'}

  -- Commentary
  use {'tpope/vim-commentary'}
  
  -- Git Gutter
  use {'airblade/vim-gitgutter'}

  -- LSP.Zero
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
  --Jupynium
  use {'kiyoon/jupynium.nvim', run = 'pip3 install --user .'}
  use {'rcarriga/nvim-notify'}
  use {'stevearc/dressing.nvim'}
  -- nvim-tree
  use {
		  'nvim-tree/nvim-tree.lua',
		  requires = {
				  'nvim-tree/nvim-web-devicons', -- optional
		  },
  }
  
  -- lightline
  use {'itchyny/lightline.vim'}

  -- which-key
  use {'folke/which-key.nvim',
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 50 
	end
  }

  -- barbar
  use {'lewis6991/gitsigns.nvim'}
  use {'romgrk/barbar.nvim'}

  -- colorizer
  use {'norcalli/nvim-colorizer.lua',
    config = function()
        require'colorizer'.setup()
    end
  }

  -- autoclose
  use {'m4xshen/autoclose.nvim'}


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

