-- add in vim keyword in lua files for easy nvim edits

return {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
        library = {
            { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        },
    },
}
