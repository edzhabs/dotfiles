return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_by_name = {
          -- ".DS_Store",
          -- "thumbs.db",
          "package-lock.json",
        },
        never_show = {
          ".git",
          "node_modules",
          ".next",
        },
      },
    },
  },
}
