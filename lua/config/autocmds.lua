-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix canceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

-- Window numbers in winbar
local function update_all_winbars()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    pcall(function()
      if vim.api.nvim_win_is_valid(win) and vim.api.nvim_win_get_config(win).relative == "" then
        local bufnr = vim.api.nvim_win_get_buf(win)
        local filetype = vim.bo[bufnr].filetype
        if filetype ~= "neo-tree" and filetype ~= "neo-tree-popup" and filetype ~= "notify" then
          vim.wo[win].winbar = "%#WinBar# " .. vim.api.nvim_win_get_number(win)
        end
      end
    end)
  end
end

vim.api.nvim_create_autocmd({ "WinEnter", "BufWinEnter" }, {
  group = vim.api.nvim_create_augroup("winbar_numbers", { clear = true }),
  callback = update_all_winbars,
})

vim.defer_fn(update_all_winbars, 100)
