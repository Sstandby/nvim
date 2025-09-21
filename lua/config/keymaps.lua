-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumlist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Close tab
keymap.set("n", "<leader>tc", ":tabclose<CR>", opts)

-- New tab
keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Nuevo workspace" })
keymap.set("n", "<leader>to", ":tabonly<CR>", { desc = "Cerrar otros workspaces" })
keymap.set("n", "te", ":tabedit<CR>", opts)

-- Navigation tabs
keymap.set("n", "<C-Left>", ":tabprev<CR>", opts)
keymap.set("n", "<C-Right>", ":tabnext<CR>", opts)
for i = 1, 9 do
  keymap.set("n", "<C-" .. i .. ">", ":tabnext " .. i .. "<CR>", { desc = "Workspace " .. i })
end

keymap.set("n", "<leader>tp", function()
  require("telescope.builtin").find_files({
    prompt_title = "Abrir en nuevo workspace",
    cwd = vim.fn.expand("~"),
    find_command = { "find", ".", "-type", "f", "-not", "-path", "*/.*" },
    attach_mappings = function(prompt_bufnr, map)
      local actions = require("telescope.actions")
      local action_state = require("telescope.actions.state")

      map("i", "<CR>", function()
        local entry = action_state.get_selected_entry()
        actions.close(prompt_bufnr)

        local file_path = entry.path or entry.value
        local dir_path = vim.fn.fnamemodify(file_path, ":h")

        vim.cmd("tabnew " .. vim.fn.fnameescape(file_path))
        vim.cmd("tcd " .. vim.fn.fnameescape(dir_path))
      end)
      return true
    end,
  })
end, { desc = "Workspace desde archivo" })

-- Navigation buffer
keymap.set("n", "bn", ":bnext<CR>", opts)
keymap.set("n", "bp", ":bprev<CR>", opts)

-- Delete buffer wipeout
keymap.set("n", "<Leader>w", function()
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  if #buffers > 1 then
    vim.cmd("bprev")
  else
    vim.cmd("bd")
    vim.cmd("Neotree show")
  end
  vim.cmd("bd #")
end, opts)

-- Delete word operations
keymap.set("n", "<leader>dw", "daw", opts) -- delete entire word
keymap.set("n", "<leader>dW", "daW", opts) -- delete entire WORD (including symbols)
keymap.set("n", "<leader>de", "de", opts) -- delete from cursor to end of word
keymap.set("n", "<leader>dE", "dE", opts) -- delete from cursor to end of WORD

-- BufferLines
for i = 1, 9 do
  keymap.set("n", "<leader>" .. i, "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>", opts)
end

-- harpoon tabs
keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
keymap.set("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
keymap.set("n", "<C-S-N>", function()
  harpoon:list():next()
end)
keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- Split window
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- horizontal
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- vertical
keymap.set("n", "<leader>sc", ":close<CR>", opts) -- close split

keymap.set("n", "<leader>se", "<C-w>=", opts) -- equalizes all sizes
keymap.set("n", "<leader>so", ":only<CR>", opts) -- close all

-- Move window
keymap.set("n", "s<left>", "<C-w>h", opts)
keymap.set("n", "s<up>", "<C-w>k", opts)
keymap.set("n", "s<down>", "<C-w>j", opts)
keymap.set("n", "s<right>", "<C-w>l", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

--  Tree
keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts)
keymap.set("n", "<leader>E", "<cmd>Neotree focus<cr>", opts)

-- Ray
keymap.set("v", "<leader>rs", ":Rayso<CR>", { desc = "Screenshot code" })
