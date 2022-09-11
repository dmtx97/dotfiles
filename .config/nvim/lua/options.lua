vim.opt.shortmess:append "c"
vim.cmd('colorscheme challenger_deep')

local options = {
	number         = true,
	relativenumber = true,
	wrap           = false,
	ignorecase     = true,
	splitbelow     = true,
	splitright     = true,
	hidden         = true,
	termguicolors  = true,
	autoindent     = true,
	incsearch      = true,
	cursorline     = true,
	mouse          = "a",
	fileencoding   = "utf-8",
	clipboard      = "unnamedplus",
	background     = "dark",
	shiftwidth     = 4,
	softtabstop    = 4,
	tabstop        = 4,
	scrolloff      = 8
}

local globals = {
	loaded_netrwPlugin = 1,
	loaded             = 1,
	mapleader          = ' '
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

for key, value in pairs(globals) do
	vim.g[key] = value
end
