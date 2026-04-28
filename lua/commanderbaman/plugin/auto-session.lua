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
        suppressed_dirs = { '~/', '~/Downloads' },
        -- log_level = 'debug',
        pre_save_cmds = { 'Neotree close' }, -- close neo-tree before saving session
        post_restore_cmds = { 'Neotree reveal' }, -- reopen it after restoring
    },
}
