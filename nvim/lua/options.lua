local opt = vim.o

-- Set highlight on search
opt.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
opt.mouse = "a"

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Decrease update time
opt.updatetime = 250
vim.wo.signcolumn = "yes"

-- Set colorscheme
opt.termguicolors = true
vim.cmd[[colorscheme catppuccin-macchiato]]
-- Set completeopt to have a better completion experience
opt.completeopt = "menuone,noselect"

--Tab size

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true