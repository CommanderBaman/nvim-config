return {
    'zaldih/themery.nvim',
    lazy = false,
    -- TODO: doesn't work as state doesn't change
    enabled = false,
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
