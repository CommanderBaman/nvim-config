-- kanagawa colorscheme

---@module 'lazy'
---@type LazySpec
return {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    enabled = false,
    config = function()
        require('kanagawa').setup {
            compile = false,
            undercurl = true,
            commentStyle = { italic = true },
            functionStyle = { bold = true },
            theme = 'dragon', -- Load "wave", "dragon", or "lotus"
            background = {
                dark = 'dragon',
                light = 'lotus',
            },
        }
        vim.cmd.colorscheme 'kanagawa'
    end,
}
