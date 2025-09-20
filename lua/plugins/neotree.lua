return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    source_selector = {
      winbar = true,
      statusline = false,
      sources = {
        { source = "filesystem" },
        { source = "buffers" },
        { source = "git_status" },
      },
    },
    window = {
      mappings = {
        ["]s"] = "prev_source",
        ["[s"] = "next_source",
      },
    },
  },
}
