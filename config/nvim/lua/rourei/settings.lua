-- General editor settings

local opt = vim.opt
local g = vim.g

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2 -- Number of spaces inserted when indenting
opt.expandtab = true -- Indent using spaces instead of tab
opt.smartindent = true
opt.autoindent = true

opt.textwidth = 120
opt.wrap = true

opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- netrw settings
g.netrw_liststyle = 3 -- tree-style view
g.netrw_banner = 0
