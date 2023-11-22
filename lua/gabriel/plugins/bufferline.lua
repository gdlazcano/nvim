return {
  "akinsho/nvim-bufferline.lua",
  config = function()
    require("bufferline").setup()
  end,
  keys = { {
    "<S-l>",
    ":BufferLineCycleNext<CR>",
    desc = "Next buffer",
  }, {
    "<S-h>",
    ":BufferLineCyclePrev<CR>",
    desc = "Previous buffer",
  }, {
    ">b",
    ":BufferLineMoveNext<CR>",
    desc = "Move buffer right",
  }, {
    "<b",
    ":BufferLineMovePrev<CR>",
    desc = "Move buffer left",
  } },
}
