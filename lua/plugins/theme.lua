return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- make sure it loads first
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        auto_integrations = true,
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
