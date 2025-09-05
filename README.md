# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Plugins

## TIMEWARRIOR.nvim

### Usage

#### Commands

timew.nvim comes with the following commands:

- `Timew start`: start tracking a new task, as input you can type in a single tag or multiple tags separated by commas, i.e, "coding, nvim"
- `Timew stop`: stop tracking the current task
- `Timew cancel` cancel tracking the current task
- `Timew continue`: resume tracking a previously tracked task
- `Timew delete`: delete a task from a list
- `Timew summary`: display a summary of your tracked tasks

#### Keybindings

By default, timew.nvim doesnt come with any keybindings. Here is some example code to set keybindings:

```lua
-- Set Timew bindings
vim.keymap.set("n", "<leader>tn", "<Cmd>Timew start<CR>")
vim.keymap.set("n", "<leader>ts", "<Cmd>Timew stop<CR>")
vim.keymap.set("n", "<leader>tc", "<Cmd>Timew continue<CR>")
vim.keymap.set("n", "<leader>tC", "<Cmd>Timew cancel<CR>")
vim.keymap.set("n", "<leader>td", "<Cmd>Timew delete<CR>")
vim.keymap.set("n", "<leader>tS", "<Cmd>Timew summary<CR>")
```
