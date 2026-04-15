return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},

  config = function(_, opts)
    require("todo-comments").setup(opts)

    local keymap = vim.keymap.set

    -- Find TODOs (Telescope)
    keymap("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "TODOs (Telescope)" })

    -- Quickfix list
    keymap("n", "<leader>fq", "<cmd>TodoQuickFix<cr>", { desc = "TODOs (Quickfix)" })

    -- Location list
    keymap("n", "<leader>fl", "<cmd>TodoLocList<cr>", { desc = "TODOs (LocList)" })

    -- Jump between TODOs
    keymap("n", "]t", function()
      require("todo-comments").jump_next()
    end, { desc = "Next TODO" })

    keymap("n", "[t", function()
      require("todo-comments").jump_prev()
    end, { desc = "Prev TODO" })

    -- Search in current project
    keymap("n", "<leader>fs", function()
      require("todo-comments").search()
    end, { desc = "Search TODOs" })
  end,
}
