return {
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	{
		"petertriho/nvim-scrollbar",
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"famiu/bufdelete.nvim",
		event = "BufRead",
		keys = {
			{
				"<C-c>",
				function()
					require("bufdelete").bufdelete(0, true)
				end,
				desc = "Delete buffer",
			},
			{
				"<C-x>",
				"<cmd>Bwipeout<CR>",
				desc = "Delete buffer and close window",
			},
		},
	},
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
	},
}
