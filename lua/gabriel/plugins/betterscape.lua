return {
	"max397574/better-escape.nvim",
	event = "InsertEnter",
    -- disable jj, only jk
    config = function()
        require("better_escape").setup {
            mapping = "jk",
        }
    end,
	opts = {},
}
