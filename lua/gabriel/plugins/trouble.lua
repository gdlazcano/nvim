return {
	"folke/trouble.nvim",
  event = "BufRead",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
	keys = {
		{
			"<leader>xx",
			"<cmd>TroubleToggle<cr>",
			desc = "Trouble toggle",
		},
		{
			"<leader>xw",
			"<cmd>TroubleToggle workspace_diagnostics<cr>",
			desc = "Trouble toggle workspace diagnostics",
		},
		{
			"<leader>xd",
			"<cmd>TroubleToggle document_diagnostics<cr>",
			desc = "Trouble toggle document diagnostics",
		},
		{
			"<leader>xl",
			"<cmd>TroubleToggle loclist<cr>",
			desc = "Trouble toggle loclist",
		},
		{
			"<leader>xq",
			"<cmd>TroubleToggle quickfix<cr>",
			desc = "Trouble toggle quickfix",
		},
		{
			"gR",
			"<cmd>TroubleToggle lsp_references<cr>",
			desc = "Trouble toggle lsp references",
		},
	},
}
