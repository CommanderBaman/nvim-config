-- For better visuals of command line

---@module 'lazy'
---@type LazySpec
return {
    'folke/noice.nvim',
    event = 'VeryLazy',
    ---@module "noice"
    ---@type NoiceConfig
    opts = {
        cmdline = {
            view = 'cmdline',
        },
        routes = {
            -- show file saved events
            {
                filter = { event = 'msg_show', kind = 'bufwrite' },
                view = 'notify',
            },
        },
    },
    dependencies = {
        'MunifTanjim/nui.nvim',
        'rcarriga/nvim-notify',
    },
}
