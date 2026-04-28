-- collection of various small independent plugins
return {
    'nvim-mini/mini.nvim',
    config = function()
        -- Better Around/Inside textobjects
        -- Examples:
        --  - va)  - [V]isually select [A]round [)]paren
        --  - yiiq - [Y]ank [I]nside [N]ext [Q]uote
        --  - ci'  - [C]hange [I]nside [']quote
        require('mini.ai').setup {
            mappings = {
                around_next = 'aa',
                inside_next = 'ii',
            },
            n_lines = 500,
        }

        -- Add/delete/replace surroundings (brackets, quotes, etc.)
        -- Examples:
        --  - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
        --  - sd'   - [S]urround [D]elete [']quotes
        --  - sr)'  - [S]urround [R]eplace [)] [']
        require('mini.surround').setup()

        -- use nerd icons for statusline
        local statusline = require 'mini.statusline'
        statusline.setup { use_icons = vim.g.have_nerd_font }

        -- set cursor location to line:column
        ---@diagnostic disable-next-line: duplicate-set-field
        statusline.section_location = function()
            return '%2l:%-2v'
        end
    end,
}
