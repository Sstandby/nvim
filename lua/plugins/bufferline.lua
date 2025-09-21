return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      numbers = "buffer_id",
      close_command = "bdelete! %d",
    },
  },
}
