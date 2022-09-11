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
	use 'nvim-telescope/telescope.nvim'
	use { 'junegunn/vim-easy-align' }
	use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', }, tag = 'nightly', config = "require('plugins.tree')" }
	use { 'kdheepak/lazygit.nvim'  }
  if packer_bootstrap then
    require('packer').sync()
  end
end)
