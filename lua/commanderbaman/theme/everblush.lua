-- everblush theme

---@module 'lazy'
---@type LazySpec
return {
    'Everblush/nvim',
    lazy = false,
    priority = 1000,
    enabled = false,
    name = 'everblush',
    config = function() vim.cmd.colorscheme 'everblush' end,
}
