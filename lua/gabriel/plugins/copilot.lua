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
        -- change mapping to <tab>
        keymap = {
          accept = "<Tab>",
        }
      }
    })
  end,
}
