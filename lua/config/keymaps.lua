-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- Unmap mappings used by tmux plugin
-- TODO(vintharas): There's likely a better way to do this.
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

vim.keymap.set("n", "<c-h>", ":TmuxNavigateLeft<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<c-l>", ":TmuxNavigateRight<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<c-j>", ":TmuxNavigateDown<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<c-k>", ":TmuxNavigateUp<cr>", { silent = true, noremap = true })

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -- scroll keep middle
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
