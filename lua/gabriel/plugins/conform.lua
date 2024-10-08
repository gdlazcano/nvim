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
			rust = { "rustfmt" },
			go = { "gofmt" },
			templ = { "templ" },
			html = { "prettierd" },
			astro = { "prettierd" },
		},
	},
	keys = {
		{
			"<leader>p",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			desc = "Format selected lines",
			mode = { "v" },
		},
		{
			"<leader>p",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			desc = "Format buffer",
		},
	},
}
