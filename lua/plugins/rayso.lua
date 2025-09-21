return {
  "TobinPalmer/rayso.nvim",
  cmd = { "Rayso" },
  config = function()
    require("rayso").setup({
      open_cmd = "chromium",
      options = {
        padding = 32,
        theme = "vercel",
        background = true,
        dark_mode = true,
        logging_enabled = true,
        logging_file = "rayso.log",
      },
    })
  end,
}
