return {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup({
      global_settings = {
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,

        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,

        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = false,

        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,

        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { "harpoon" },

        -- set marks specific to each git branch inside git repository
        mark_branch = false,

        -- enable tabline with harpoon marks
        tabline = false,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
      },
    })
  end,
  keys = {
    {
      "<leader>a",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Harpoon menu",
    },
    {
      "<leader>hh",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Harpoon add file"
    },
    {
      "<leader>hj",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Harpoon 1",
    },
    {
      "<leader>hk",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Harpoon 2",
    },
    {
      "<leader>hl",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Harpoon 3",
    },
    {
      "<leader>h;",
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "Harpoon 4",
    },
    {
      "<leader>hp",
      function()
        require("harpoon.ui").nav_prev()
      end,
      desc = "Harpoon next",
    },
    {
      "<leader>hn",
      function()
        require("harpoon.ui").nav_next()
      end,
      desc = "Harpoon previous",
    },
  },
}

