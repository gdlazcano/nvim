return {
  "akinsho/nvim-toggleterm.lua",
  config = function()
    local toggleterm = require("toggleterm")
    local terminal = require("toggleterm.terminal").Terminal
    local lazygit = terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float",
    })

    Lazygit_toggle = function()
      lazygit:toggle()
    end

    toggleterm.setup({
      size = 10,
      open_mapping = [[<c-\>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      persist_size = true,
      direction = "horizontal",
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell,  -- change the default shell
    })
  end,
  keys = {
    { "<leader>gg", "<cmd>lua Lazygit_toggle()<CR>", desc = "Lazygit" },
  },
}
