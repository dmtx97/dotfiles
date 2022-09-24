local lspconfig = require('lspconfig')
lspconfig.ccls.setup{}

local lspconfig = require('lspconfig')

local lsp_flags = {
  debounce_text_changes = 150,
}

local servers = { 'ccls' }
for _, lsp in pairs(servers) do
	lspconfig[lsp].setup {
		flags = flags
	}
end



