return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    require("harpoon").setup({
      global_settings = {
        save_on_toggle = false,
        save_on_change = true,
        enter_on_sendcmd = false,
        tmux_autoclose_windows = false,
        excluded_filetypes = { "harpoon" },
        mark_branch = false,
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

