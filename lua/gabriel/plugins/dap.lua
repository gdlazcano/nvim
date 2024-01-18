return { {
  "rcarriga/nvim-dap-ui",
  event = "BufReadPre",
  config = function()
    require("dapui").setup()
  end,
  dependencies = {
    "mfussenegger/nvim-dap"
  },
  keys = {
    {
      "<leader>dd",
      "<cmd>lua require('dapui').toggle()<CR>",
      desc = "Toggle DAP UI"
    },
    {
      "<F5>",
      "<cmd>lua require('dap').continue()<CR>",
      desc = "[DAP] Continue"
    },
    {
      "<F10>",
      "<cmd>lua require('dap').step_over()<CR>",
      desc = "[DAP] Step over"
    },
    {
      "<F11>",
      "<cmd>lua require('dap').step_into()<CR>",
      desc = "[DAP] Step into"
    },
    {
      "<F12>",
      "<cmd>lua require('dap').step_out()<CR>",
      desc = "[DAP] Step out"
    },
    {
      "<leader>b",
      "<cmd>lua require('dap').toggle_breakpoint()<CR>",
      desc = "[DAP] Toggle breakpoint"
    },
    {
      "<leader>B",
      "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
      desc = "[DAP] Set breakpoint"
    },
    {
      "<leader>lp",
      "<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
      desc = "[DAP] Log point"
    },
    {
      "<leader>dr",
      "<cmd>lua require('dap').repl.open()<CR>",
      desc = "[DAP] Open REPL"
    },
    {
      "<leader>dl",
      "<cmd>lua require('dap').run_last()<CR>",
      desc = "[DAP] Run last"
    },
  }
},
  {
    "theHamsta/nvim-dap-virtual-text",
    event = "BufReadPre",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    event = "VimEnter",
    config = function()
      require("telescope").load_extension("dap")
    end,
  }
}

