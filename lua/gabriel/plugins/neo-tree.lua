return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	keys = { {
		"<leader>e",
		"<cmd>Neotree toggle<cr>",
		desc = "NeoTree",
	} },
	config = function()
		require("neo-tree").setup({
			window = {
				position = "left",
				mappings = {
					["P"] = {
						"toggle_preview",
						config = {
							use_float = true,
							use_image_nvim = true,
						},
					},
				},
			},
		})
	end,
}
