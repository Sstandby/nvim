return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "tiagovla/scope.nvim",
  },
  opts = {
    options = {
      numbers = "buffer_id",
      close_command = "bdelete! %d",
      diagnostics = "nvim_lsp",
      show_buffer_icons = true,
    },
  },
}
