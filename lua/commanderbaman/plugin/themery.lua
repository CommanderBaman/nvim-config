return {
    'zaldih/themery.nvim',
    lazy = false,
    dependencies = {
        require 'commanderbaman.theme.monokai-pro',
        require 'commanderbaman.theme.one-dark-pro',
    },
    config = function()
        require('themery').setup {
            themes = { 'monokai-pro', 'onedark' },
            livePreview = true,
        }
    end,
}
