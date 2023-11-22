return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  config = function()
    require('gitsigns').setup()
  end,
  keys = { {
    "<leader>jd",
    ":Gitsigns diffthis<CR>",
    desc = "Diff this"
  }, {
    "<leader>jc",
    ":Gitsigns setqflist<CR>",
    desc = "Set quickfix list"
  }, {
    "<leader>jl",
    ":Gitsigns blame_line<CR>",
    desc = "Blame line"
  }, {
    "<leader>jp",
    ":Gitsigns preview_hunk<CR>",
    desc = "Preview hunk"
  }, {
    "<leader>js",
    ":Gitsigns stage_hunk<CR>",
    desc = "Stage hunk"
  }, {
    "<leader>jh",
    ":Gitsigns toggle_deleted<CR>",
    desc = "Toggle deleted"
  }, {
    "<leader>jj",
    ":Gitsigns reset_hunk<CR>",
    desc = "Reset hunk"
  }, {
    "<leader>jn",
    ":Gitsigns next_hunk<CR>",
    desc = "Next hunk"
  } },
}
