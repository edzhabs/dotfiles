return {
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = false,
        styles = {
          floats = "transparent",
          sidebars = "transparent",
        },
      }
    end,
  },
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
