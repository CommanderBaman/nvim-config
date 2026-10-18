-- for switching to various themes on the fly

---@module 'lazy'
---@type LazySpec
return {
    'CommanderBaman/themery-telescope.nvim',
    lazy = false,
    priority = 1000,
    enabled = true,
    dependencies = {
        'oxfist/night-owl.nvim',
        { 'folke/tokyonight.nvim', enabled = true },
        -- disabled themes
        { 'Everblush/nvim', enabled = false },
        { 'rebelot/kanagawa.nvim', enabled = false },
        { 'marko-cerovac/material.nvim', enabled = false },
        { 'loctvl842/monokai-pro.nvim', enabled = false },
        { 'EdenEast/nightfox.nvim', enabled = false },
        { 'olimorris/onedarkpro.nvim', enabled = false },
        { 'olivercederborg/poimandres.nvim', enabled = false },
        { 'sainnhe/sonokai', enabled = false },
    },
    config = function()
        local themery = require 'themery-telescope'
        themery.setup {
            themes = {
                {
                    name = 'Night Owl',
                    colorscheme = 'night-owl',
                    before = [[
                        require('night-owl').setup()
                        ]],
                },
                {
                    name = 'Tokyo Night (Night)',
                    colorscheme = 'tokyonight-night',
                },
                -- -- disabled themes commented out, so that I can switch easily
                -- {
                --     name = 'Everblush',
                --     colorscheme = 'everblush',
                -- },
                -- {
                --     name = 'Kanagawa (Dragon)',
                --     colorscheme = 'kanagawa',
                --     before = [[
                --     require('kanagawa').setup {
                --         compile = false,
                --         undercurl = true,
                --         commentStyle = { italic = true },
                --         functionStyle = { bold = true },
                --         theme = 'dragon', -- Load "wave", "dragon", or "lotus"
                --         background = {
                --             dark = 'dragon',
                --             light = 'lotus',
                --         },
                --     }
                --     ]],
                -- },
                -- {
                --     name = 'Material (Deep Ocean)',
                --     colorscheme = 'material',
                --     before = [[
                --     vim.g.material_style = 'deep ocean'
                --     ]],
                -- },
                -- {
                --     name = 'Monokai Pro (Machine)',
                --     colorscheme = 'monokai-pro-machine',
                -- },
                -- {
                --     name = 'Nightfox',
                --     colorscheme = 'nightfox',
                -- },
                -- {
                --     name = 'One Dark Pro',
                --     colorscheme = 'onedark',
                -- },
                -- {
                --     name = 'Poimandres',
                --     colorscheme = 'poimandres',
                -- },
                -- {
                --     name = 'Sonokai',
                --     colorscheme = 'sonokai',
                --     before = [[
                --     vim.g.sonokai_style = 'maia'
                --     vim.g.sonokai_enable_italic = true
                --     ]],
                -- },
            },
        }
        vim.keymap.set(
            'n',
            '<leader>tt',
            themery.getTelescopePicker(),
            { desc = 'Switch Themes' }
        )
    end,
}
