return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.indentscope").setup()
    require("mini.starter").setup()
    require("mini.statusline").setup()
    require("mini.comment").setup({
      mappings = {
        comment = "<leader>/",
        comment_line = "<leader>/",
        comment_visual = "<leader>/",
        textobject = "<leader>/",
      },
    })
    require("mini.pairs").setup()
	end,
}
