-- night owl theme

---@module 'lazy'
---@type LazySpec
return {
    'oxfist/night-owl.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    enabled = true,
    config = function()
        require('night-owl').setup()
        vim.cmd.colorscheme 'night-owl'
    end,
}
