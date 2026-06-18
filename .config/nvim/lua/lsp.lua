-- Golang
vim.lsp.enable('gopls')


vim.lsp.config("roslyn", {
	cmd = {
		"roslyn-language-server",
		"--stdio",
	}
})


vim.lsp.enable('roslyn')

-- Lua
vim.lsp.config(
    'lua_ls',
    {
        settings = {
            Lua = {
                diagnostics = {globals = {"vim", "require"},},
                runtime = {
                    version = "LuaJIT",
                },
                telemetry = {enable = false,},
                workspace = {
                    library = {vim.env.VIMRUNTIME,},
                },
            },
        }
    }
)

vim.lsp.enable('lua_ls')

local cmp = require("cmp")

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

