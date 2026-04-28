local o = vim.o
local opt = vim.opt
local global = vim.g

-- fonts
global.have_nerd_font = true

-- disable netrw for neo-tree
global.loaded_netrw = 1
global.loaded_netrwPlugin = 1

-- show line numbers relatively
o.number = true
o.relativenumber = true

-- -- enable mouse mode
-- o.mouse = 'a'

-- -- no showing mode as it is in status line
-- o.showmode = false

-- clipboard to be same as OS one
vim.schedule(function() o.clipboard = 'unnamedplus' end)

-- long lines of share same indent
o.breakindent = true

-- save undo history
o.undofile = true

-- search options = case insensitive unless one of them capital
o.ignorecase = true
o.smartcase = true

-- sign columns display additional information
o.signcolumn = 'yes'

-- time to run things after editing
o.updatetime = 250

-- time to run things after sequence enter
o.timeoutlen = 300

-- window splits to right and below
o.splitright = true
o.splitbelow = true

-- display invisible characters
o.list = true

-- map special characters to specific symbols
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- preview things as I type
o.inccommand = 'split'

-- highlight current line
o.cursorline = true

-- at least this many rows from the edge of screen
o.scrolloff = 10
-- o.sidescrolloff = 5 -- not required as i wrap anyway

-- raise a dialog if unsaved files
o.confirm = true

-- making tabs and spaces consistent across files
o.tabstop = 4 -- tab will be shown as 4 spaces
o.shiftwidth = 4 -- indent operations use 4 spaces
o.expandtab = true -- use spaces when pressing tab
o.softtabstop = 4 -- when pressing tab, add 4 spaces
