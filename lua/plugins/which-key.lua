return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		delay = 0,
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.add({
			{ "<leader>c", group = "[C]ode" },
			{ "<leader>d", group = "[D]ocument" },
			{ "<leader>r", group = "[R]ename" },
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>w", group = "[W]orkspace" },
			{ "<leader>t", group = "[T]oggle" },
			{ "<leader>b", group = "[B]uffer" },
			{ "<leader>n", group = "[N]eoTree" },
			{ "<leader>bn", ":bnext<CR>", desc = "Next buffer" },
			{ "<leader>bp", ":bprevious<CR>", desc = "Previous buffer" },
			{ "<leader>b[", ":bfirst<CR>", desc = "First buffer" },
			{ "<leader>b]", ":blast<CR>", desc = "Last buffer" },
			{ "<leader>bd", ":bdelete<CR>", desc = "Delete buffer" },
			{ "<leader>bf", ":bfirst<CR>", desc = "First buffer" },
			{ "<leader>bl", ":blast<CR>", desc = "Last buffer" },
		})
	end,
}
