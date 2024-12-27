return {
	"zbirenbaum/copilot.lua",
	cmd = { "Copilot" },
	event = { "InsertEnter" },
	lazy = false,

	config = function()
		require("copilot").setup({
			suggestion = {
				auto_trigger = true,
				debounce = 50,
				keymap = {
					accept = ";;",
				},
			},
      filetypes = {
        markdown = true
      }
		})
	end,
}
