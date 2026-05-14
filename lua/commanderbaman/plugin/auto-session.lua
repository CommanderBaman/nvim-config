-- Auto session for restoring how vim looked before closing

---@module 'lazy'
---@type LazySpec
return {
    'rmagatti/auto-session',
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
        auto_save = true,
        auto_restore = true,
        auto_create = true,
        suppressed_dirs = { '~/', '~/Downloads' },
        pre_save_cmds = { 'Neotree close' },
    },
}
