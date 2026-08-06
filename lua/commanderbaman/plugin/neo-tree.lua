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
        -- position the neotree window
        window = {
            position = 'right',
        },
        filesystem = {
            -- needs to be disabled so that it doesn't open by default
            hijack_netrw_behavior = 'disabled',
            window = {
                mappings = {
                    ['\\'] = 'close_window',
                },
            },
            -- make every item visible
            filtered_items = {
                visible = true,
                never_show_by_pattern = {
                    '.git',
                    'node_modules',
                },
            },
        },
        event_handlers = {
            -- close neotree when we open up a file via it
            {
                event = 'file_opened',
                handler = function() vim.cmd 'Neotree close' end,
            },
        },
    },
}
