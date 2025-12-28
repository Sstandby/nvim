# Neovim Keymaps

Comprehensive keyboard shortcuts reference for custom Neovim configuration.

## Table of Contents

- [Basic Operations](#basic-operations)
- [Workspace Management](#workspace-management)
- [Buffer Management](#buffer-management)
- [BufferLine Navigation](#bufferline-navigation)
- [Text Operations](#text-operations)
- [Treesitter Text Objects](#treesitter-text-objects)
- [Harpoon Quick Navigation](#harpoon-quick-navigation)
- [Window Splits](#window-splits)
- [Window Navigation](#window-navigation)
- [Window Resizing](#window-resizing)
- [File Explorer](#file-explorer)
- [Telescope](#telescope)
- [Utilities](#utilities)

## Basic Operations

| Keymap   | Mode   | Action       | Description                         |
| -------- | ------ | ------------ | ----------------------------------- |
| `+`      | Normal | Increment    | Increment number under cursor       |
| `-`      | Normal | Decrement    | Decrement number under cursor       |
| `Ctrl+a` | Normal | Select All   | Select entire file content          |
| `Ctrl+m` | Normal | Jump Forward | Jump to newer position in jump list |

## Workspace Management

| Keymap               | Mode   | Action                  | Description                         |
| -------------------- | ------ | ----------------------- | ----------------------------------- |
| `<leader>tn`         | Normal | New Tab                 | Create new workspace tab            |
| `<leader>tc`         | Normal | Close Tab               | Close current workspace tab         |
| `<leader>to`         | Normal | Close Other Tabs        | Close all workspaces except current |
| `te`                 | Normal | Edit in Tab             | Open file in new tab                |
| `Ctrl+Left`          | Normal | Previous Tab            | Navigate to previous workspace      |
| `Ctrl+Right`         | Normal | Next Tab                | Navigate to next workspace          |
| `Ctrl+1` to `Ctrl+9` | Normal | Go to Tab N             | Jump directly to workspace 1-9      |
| `<leader>tp`         | Normal | New Workspace from File | Create workspace from file picker   |

## Buffer Management

| Keymap      | Mode   | Action          | Description                                |
| ----------- | ------ | --------------- | ------------------------------------------ |
| `bn`        | Normal | Next Buffer     | Switch to next buffer                      |
| `bp`        | Normal | Previous Buffer | Switch to previous buffer                  |
| `<leader>w` | Normal | Close Buffer    | Close current buffer (with smart fallback) |

## BufferLine Navigation

| Keymap                     | Mode   | Action         | Description                               |
| -------------------------- | ------ | -------------- | ----------------------------------------- |
| `<leader>1` to `<leader>9` | Normal | Go to Buffer N | Jump directly to buffer 1-9 in BufferLine |

## Text Operations

| Keymap       | Mode   | Action               | Description                            |
| ------------ | ------ | -------------------- | -------------------------------------- |
| `<leader>dw` | Normal | Delete Word          | Delete entire word under cursor        |
| `<leader>dW` | Normal | Delete WORD          | Delete entire WORD (including symbols) |
| `<leader>de` | Normal | Delete to End        | Delete from cursor to end of word      |
| `<leader>dE` | Normal | Delete to End (WORD) | Delete from cursor to end of WORD      |

## Treesitter Text Objects

### Select Objects

| Keymap | Mode   | Action                | Description            |
| ------ | ------ | --------------------- | ---------------------- |
| `vaf`  | Visual | Select Function       | Select entire function |
| `vif`  | Visual | Select Inner Function | Select function body   |
| `vac`  | Visual | Select Class          | Select entire class    |
| `vic`  | Visual | Select Inner Class    | Select class body      |
| `vab`  | Visual | Select Block          | Select entire block    |
| `vib`  | Visual | Select Inner Block    | Select block content   |

**Note:** Replace `v` with `d` (delete), `c` (change), or `y` (yank). Example: `daf` deletes entire function.

### Navigate Code

| Keymap | Mode   | Action                  | Description                      |
| ------ | ------ | ----------------------- | -------------------------------- |
| `]f`   | Normal | Next Function Start     | Jump to next function            |
| `[f`   | Normal | Previous Function Start | Jump to previous function        |
| `]F`   | Normal | Next Function End       | Jump to end of next function     |
| `[F`   | Normal | Previous Function End   | Jump to end of previous function |
| `]c`   | Normal | Next Class Start        | Jump to next class               |
| `[c`   | Normal | Previous Class Start    | Jump to previous class           |
| `]C`   | Normal | Next Class End          | Jump to end of next class        |
| `[C`   | Normal | Previous Class End      | Jump to end of previous class    |

## Harpoon Quick Navigation

| Keymap         | Mode   | Action              | Description                      |
| -------------- | ------ | ------------------- | -------------------------------- |
| `<leader>a`    | Normal | Add to Harpoon      | Mark current file in Harpoon     |
| `Ctrl+Shift+P` | Normal | Previous Harpoon    | Navigate to previous marked file |
| `Ctrl+Shift+N` | Normal | Next Harpoon        | Navigate to next marked file     |
| `Ctrl+e`       | Normal | Toggle Harpoon Menu | Show/hide Harpoon quick menu     |

## Window Splits

| Keymap       | Mode   | Action           | Description                     |
| ------------ | ------ | ---------------- | ------------------------------- |
| `<leader>sh` | Normal | Split Horizontal | Create horizontal split         |
| `<leader>sv` | Normal | Split Vertical   | Create vertical split           |
| `<leader>sc` | Normal | Close Split      | Close current split window      |
| `<leader>se` | Normal | Equalize Splits  | Make all splits equal size      |
| `<leader>so` | Normal | Only Current     | Close all splits except current |

## Window Navigation

| Keymap    | Mode   | Action      | Description          |
| --------- | ------ | ----------- | -------------------- |
| `s Left`  | Normal | Focus Left  | Move to left window  |
| `s Up`    | Normal | Focus Up    | Move to window above |
| `s Down`  | Normal | Focus Down  | Move to window below |
| `s Right` | Normal | Focus Right | Move to right window |

## Window Resizing

| Keymap         | Mode   | Action          | Description          |
| -------------- | ------ | --------------- | -------------------- |
| `Ctrl+w Right` | Normal | Decrease Width  | Make window narrower |
| `Ctrl+w Left`  | Normal | Increase Width  | Make window wider    |
| `Ctrl+w Down`  | Normal | Increase Height | Make window taller   |
| `Ctrl+w Up`    | Normal | Decrease Height | Make window shorter  |

## File Explorer

| Keymap      | Mode   | Action          | Description             |
| ----------- | ------ | --------------- | ----------------------- |
| `<leader>e` | Normal | Toggle Neo-tree | Show/hide file explorer |
| `<leader>E` | Normal | Focus Neo-tree  | Focus on file explorer  |

### Neo-tree Navigation

| Keymap | Mode   | Action          | Description                   |
| ------ | ------ | --------------- | ----------------------------- |
| `]s`   | Normal | Previous Source | Switch to previous source tab |
| `[s`   | Normal | Next Source     | Switch to next source tab     |

## Telescope

| Keymap       | Mode   | Action             | Description                            |
| ------------ | ------ | ------------------ | -------------------------------------- |
| `;f`         | Normal | Find Files         | Search files respecting .gitignore     |
| `;r`         | Normal | Live Grep          | Search text in files with live results |
| `\\`         | Normal | Buffers            | List open buffers                      |
| `;t`         | Normal | Help Tags          | Search help documentation              |
| `;;`         | Normal | Resume             | Resume previous telescope picker       |
| `;e`         | Normal | Diagnostics        | Show LSP diagnostics                   |
| `;s`         | Normal | Treesitter Symbols | List functions and variables           |
| `;c`         | Normal | Incoming Calls     | Show LSP incoming calls                |
| `sf`         | Normal | File Browser       | Open file browser at current path      |
| `<leader>fp` | Normal | Plugin Files       | Find files in plugin directory         |

### Telescope File Browser (Normal Mode)

| Keymap     | Mode   | Action              | Description                         |
| ---------- | ------ | ------------------- | ----------------------------------- |
| `n`        | Normal | Create              | Create new file or directory        |
| `h`        | Normal | Parent Directory    | Go to parent directory              |
| `/`        | Normal | Insert Mode         | Switch to insert mode for searching |
| `Ctrl+u`   | Normal | Scroll Up           | Move selection up 10 items          |
| `Ctrl+d`   | Normal | Scroll Down         | Move selection down 10 items        |
| `PageUp`   | Normal | Preview Scroll Up   | Scroll preview window up            |
| `PageDown` | Normal | Preview Scroll Down | Scroll preview window down          |

## Utilities

| Keymap       | Mode   | Action           | Description                         |
| ------------ | ------ | ---------------- | ----------------------------------- |
| `<leader>rs` | Visual | Screenshot Code  | Generate code screenshot with Rayso |
| `gd`         | Normal | Go to Definition | Jump to definition using Telescope  |

## LSP Configuration

### Inlay Hints

Inlay hints are disabled globally. TypeScript and JavaScript have specific configurations for parameter hints and type information.
