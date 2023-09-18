-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Silent keymap option
local opts = { silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Scroll down but stay centered
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Join lines but do not move cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Center screen when found the pattern
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete to the black hole register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- paste from system clipboard, and replace selection in visual mode
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set({ "x", "v" }, "<leader>p", [["_dp]])
vim.keymap.set({ "x", "v" }, "<leader>P", [["_dP]])

-- yank to system clipboard
vim.keymap.set({ "n", "v", "x" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- move between windows easily with ctrl in original position
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")

-- saner changelist mappings, similar to f-<char> next and previous
-- now ';' -> next, ',' -> previous
vim.keymap.set("n", "g;", "g,")
vim.keymap.set("n", "g,", "g;")

-- clean swap
vim.keymap.set("n", "<leader>rmswap", "<cmd>!rm -rf ~/.local/state/nvim/swap<cr>", { silent = true })

-- when things don't work
vim.keymap.set("n", "<leader>dio", function()
  vim.cmd("CellularAutomaton make_it_rain")
  vim.fn.system("ffplay -nodisp -autoexit ~/Music/el_short.mp3 > /dev/null 2>&1 &")
end, opts)
