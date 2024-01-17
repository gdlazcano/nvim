return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  requires = {
    { "nvim-lua/plenary.nvim" },
  },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
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
