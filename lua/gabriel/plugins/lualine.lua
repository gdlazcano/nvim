return {
	"nvim-lualine/lualine.nvim",
	requires = { "kyazdani42/nvim-web-devicons", opt = true },
	config = function()
		require("lualine").setup({
			options = {
				theme = "onedark",
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = {
					{
						"filename",
						path = 1,
					},
				},
				lualine_x = { "searchcount" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = { "fzf", "nvim-tree" },
		})
	end,
}
