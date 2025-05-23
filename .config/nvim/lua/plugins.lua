local fn = vim.fn

local ensure_packer = function()
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save plugins.lua 
vim.cmd([[
	augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])

local packer = require("packer")

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float {border = "rounded" }
		end
	},
}

-- Packer plugins
return packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	-- use { 'neoclide/coc.nvim', branch = 'release' }
	-- use 'neovim/nvim-lspconfig'
	use 'junegunn/vim-easy-align'
	use 'challenger-deep-theme/vim'
	use 'kdheepak/lazygit.nvim'
	use 'junegunn/fzf.vim' 
	use 'junegunn/fzf' 
	use 'lervag/vimtex' 
	use { "windwp/nvim-autopairs", config = "require('nvim-autopairs').setup()" }
	-- use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', }, tag = 'nightly', config = "require('plugins.tree')" }
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }, config = "require('plugins.lualine')" }
	use { 'numToStr/Comment.nvim', config = "require('Comment').setup()" }
	use 'neovim/nvim-lspconfig'
	-- Autocompletion framework
	use("hrsh7th/nvim-cmp")
	use({
	  -- cmp LSP completion
	  "hrsh7th/cmp-nvim-lsp",
	  -- cmp Snippet completion
	  "hrsh7th/cmp-vsnip",
	  -- cmp Path completion
	  "hrsh7th/cmp-path",
	  "hrsh7th/cmp-buffer",
	  after = { "hrsh7th/nvim-cmp" },
	  requires = { "hrsh7th/nvim-cmp" },
	})
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}


	if packer_bootstrap then
		require('packer').sync()
	end
end)
