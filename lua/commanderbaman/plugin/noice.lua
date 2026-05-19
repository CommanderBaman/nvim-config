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
        {
            'rcarriga/nvim-notify',
            ---@module "notify"
            ---@type notify.Config
            opts = {
                -- This forces notifications to stack from the bottom up
                render = 'compact',
                merge_duplicates = true,
                top_down = false,
                stages = 'static',
            },
        },
    },
}
