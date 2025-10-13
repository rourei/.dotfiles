-- General Remaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
-- Moving lines, see https://vim.fandom.com/wiki/Moving_lines_up_or_down#Mappings_to_move_lines
vim.keymap.set("n", "<C-j>", ":m+<CR>==")
vim.keymap.set("n", "<C-k>", ":m-2<CR>==")
