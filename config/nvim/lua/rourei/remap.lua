-- General Remaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
-- Moving lines, see https://vim.fandom.com/wiki/Moving_lines_up_or_down#Mappings_to_move_lines
vim.keymap.set("n", "<C-j>", ":m+<CR>==")
vim.keymap.set("n", "<C-k>", ":m-2<CR>==")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move highlighted lines up incl. auto-indent"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move highlighted lines down incl. auto-indent"})
-- Buffers
vim.keymap.set("n", "[b", ":bnext<CR>")
vim.keymap.set("n", "]b", ":bprevious<CR>")
vim.keymap.set("n", "[B", ":bfirst<CR>")
vim.keymap.set("n", "]B", ":blast<CR>")

vim.keymap.set('n', 'yoN', function()
  if not vim.wo.nu and not vim.wo.rnu then
    vim.wo.nu = true
    vim.wo.rnu = true
  else
    vim.wo.nu = false
    vim.wo.rnu = false
  end
end, { desc = "Toggle absolute and relative line numbers" })
