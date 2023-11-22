return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require("mini.indentscope").setup()
    -- require("mini.animate").setup()
    require("mini.bufremove").setup()
    require("mini.pairs").setup()
  end,
  keys = {{
    "<C-c>",
    "<cmd>lua require('mini.bufremove').bufdelete(0, false)<CR>",
    desc = "Delete buffer",
  }}
}
