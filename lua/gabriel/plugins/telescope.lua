return {
  "nvim-telescope/telescope.nvim",
  requires = {
    { "nvim-lua/plenary.nvim" },
  },
  keys = { {
    "<leader>ff",
    ":Telescope find_files<CR>",
    desc = "Find files",
  }
  , {
    "<leader>fs",
    ":Telescope live_grep<CR>",
    desc = "Find string",
  }
  , {
    "<leader>fb",
    ":Telescope buffers<CR>",
    desc = "Find buffers",
  }
  },
}
