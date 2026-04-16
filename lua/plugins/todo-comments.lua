return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},

  config = function(_, opts)
    require("todo-comments").setup(opts)

    local keymap = vim.keymap.set

    -- Single entry point (via Telescope)
    keymap("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find TODOs" })

    -- Optional: Quickfix (keep only if you actually use it)
    keymap("n", "<leader>fq", "<cmd>TodoQuickFix<cr>", { desc = "TODOs (Quickfix)" })

    -- Jump between TODOs
    keymap("n", "]t", function()
      require("todo-comments").jump_next()
    end, { desc = "Next TODO" })

    keymap("n", "[t", function()
      require("todo-comments").jump_prev()
    end, { desc = "Prev TODO" })
  end,
}
