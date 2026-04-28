-- Neo-tree is a Neovim plugin to browse the file system
-- NOTE: if disabling this plugin for using netrw,
-- please edit core/option.lua to enable netrw again

---@module 'lazy'
---@type LazySpec
return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
    },
    lazy = false,
    keys = {
        { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    ---@module 'neo-tree'
    ---@type neotree.Config
    opts = {
        window = {
            position = 'right',
        },
        filesystem = {
            hijack_netrw_behavior = 'open_default',
            window = {
                mappings = {
                    ['\\'] = 'close_window',
                },
            },
        },
    },
}
