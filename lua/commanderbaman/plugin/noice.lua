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
                -- duplicate notifications don't consume more space
                merge_duplicates = true,
                -- This forces notifications to stack from the bottom up
                top_down = false,
                -- no animation
                stages = 'static',
            },
        },
    },
}
