-- poimandres theme

---@module 'lazy'
---@type LazySpec
return {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    enabled = false,
    config = function()
        require('poimandres').setup()
        vim.cmd.colorscheme 'poimandres'
    end,
}
