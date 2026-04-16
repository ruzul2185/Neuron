return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},

  config = function(_, opts)
    require("todo-comments").setup(opts)

    local keymap = vim.keymap.set

    -- Jump between TODOs
    keymap("n", "]t", function()
      require("todo-comments").jump_next()
    end, { desc = "Next TODO" })

    keymap("n", "[t", function()
      require("todo-comments").jump_prev()
    end, { desc = "Prev TODO" })
  end,
}
