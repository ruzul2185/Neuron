return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  config = function()
    local wk = require("which-key")

    wk.add({
      { "<leader>s", group = "Window Management" },
      { "<leader>t", group = "Tabs Management" },
      { "<leader>f", group = "Telescope" },
    })
  end,

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
