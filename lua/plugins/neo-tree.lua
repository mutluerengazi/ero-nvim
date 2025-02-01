return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal" },
		{
			"<leader>n",
			function()
				require("neo-tree.command").execute({ toggle = false, dir = vim.fn.getcwd() })
			end,
			{ desc = "Toggle NeoTree" },
		},
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true, -- This line makes hidden files visible
				hide_dotfiles = false, -- This line ensures dotfiles are not hidden
				hide_gitignored = false, -- Optional: This line shows gitignored files
			},
			window = {
				position = "float", -- Change from 'left' to 'float'
				mappings = {
					["\\"] = "close_window",
					["C"] = "close_all_nodes",
					["h"] = "close_node",
					["l"] = "open",
				},
			},
		},
	},
}
