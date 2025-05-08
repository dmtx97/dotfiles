local nvim_lsp = require'lspconfig'
local cmp = require("cmp")

local on_attach = function(client, buffer)
    require'completion'.on_attach(client)
end

nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})

cmp.setup({
	preselect = cmp.PreselectMode.None,
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	mapping = cmp.mapping.preset.insert({ 
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-e>'] = cmp.mapping.close(),
		['<Shift-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm { select = true } 
	}),

	-- Installed sources
	sources = {
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
    	{ name = "path" },
    	{ name = "buffer" },
	},
})

