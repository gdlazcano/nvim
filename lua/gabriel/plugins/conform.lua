return {
	"stevearc/conform.nvim",
	event = "BufReadPre",
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			cpp = { "clang-format" },
		},
	},
	keys = {
		{
			-- Format selected lines
			"<leader>ww",
			function()
				require("conform").format_selection()
			end,
			desc = "Format selected lines",
		},
		{
			"<leader>we",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			desc = "Format buffer",
		},
	},
}
