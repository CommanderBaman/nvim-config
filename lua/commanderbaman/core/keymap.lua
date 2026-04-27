local global = vim.g
local keymap = vim.keymap

-- space is the leader
global.mapleader = ' '
global.maplocalleader = ' '

-- search highlights
keymap.set(
    'n',
    '<Esc>',
    '<cmd>nohlsearch<CR>',
    { desc = 'Clear search highlights on escape press' }
)

-- to open diagnostics
vim.keymap.set(
    'n',
    '<leader>q',
    vim.diagnostic.setloclist,
    { desc = 'Open diagnostic [Q]uickfix list' }
)

-- -- terminal mode
-- vim.keymap.set(
--   't',
--   '<Esc><Esc>',
--   '<C-\\><C-n>',
--   { desc = 'Exit terminal mode' }
-- )

-- -- window navigation
-- vim.keymap.set(
--   'n',
--   '<C-h>',
--   '<C-w><C-h>',
--   { desc = 'Move focus to the left window' }
-- )
-- vim.keymap.set(
--   'n',
--   '<C-l>',
--   '<C-w><C-l>',
--   { desc = 'Move focus to the right window' }
-- )
-- vim.keymap.set(
--   'n',
--   '<C-j>',
--   '<C-w><C-j>',
--   { desc = 'Move focus to the lower window' }
-- )
-- vim.keymap.set(
--   'n',
--   '<C-k>',
--   '<C-w><C-k>',
--   { desc = 'Move focus to the upper window' }
-- )
