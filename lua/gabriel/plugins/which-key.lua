return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		require("which-key").register({
			j = {
				name = "Gitsigns",
			},
			x = {
				name = "Trouble",
			},
			w = {
				name = "Format",
			},
			g = {
				name = "LazyGit/Terminal",
			},
			f = { name = "Telescope" },
		}, { prefix = "<leader>" })
	end,
}
