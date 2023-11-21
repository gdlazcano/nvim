return {
  "zbirenbaum/copilot.lua",
  cmd = {"Copilot"},
  event = {"InsertEnter", "VeryLazy"},
  lazy = true,  
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = true,
      }
    })
  end,
}
