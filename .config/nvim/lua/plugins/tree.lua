local mappings = {

}

require('nvim-tree').setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		width = 40,
		mappings = {
			list = mappings,
		},
	},
	renderer = {group_empty = true},
	filters = {
		dotfiles = true,
	},
})

local nt_api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>e", require("nvim-tree.api").tree.toggle)
