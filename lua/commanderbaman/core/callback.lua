-- remove adding comment to next line when in comment
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*',
    callback = function() vim.opt.formatoptions:remove { 'c', 'r', 'o' } end,
})

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup(
        'kickstart-highlight-yank',
        { clear = true }
    ),
    callback = function() vim.hl.on_yank() end,
})

-- check if file changed on disk
vim.api.nvim_create_autocmd({ 'FocusGained', 'BufEnter' }, {
    command = "if mode() != 'c' | checktime | endif",
    pattern = '*',
})
