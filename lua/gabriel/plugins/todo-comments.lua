return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false,
	opts = {
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
