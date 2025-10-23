-- General editor settings

local opt = vim.opt
local g = vim.g

opt.encoding = "UTF-8"

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2 -- Number of spaces inserted when indenting
opt.expandtab = true -- Indent using spaces instead of tab
opt.smartindent = true
opt.autoindent = true

opt.textwidth = 120
opt.wrap = true

opt.foldlevel = 3

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.scrolloff = 10

opt.mouse = ""

opt.spell = true
opt.spelllang = { "en_us", "de_de" }

-- netrw settings
g.netrw_liststyle = 3 -- tree-style view
g.netrw_banner = 0

