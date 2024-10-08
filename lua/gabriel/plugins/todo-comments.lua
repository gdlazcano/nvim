return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		{
			"<leader>td",
			"<cmd>TodoTelescope<cr>",
			desc = "Open Telescope todo list",
		},
		{
			"<leader>tt",
			"<cmd>TodoTrouble<cr>",
			desc = "Open Trouble todo list",
		},
	},
}
