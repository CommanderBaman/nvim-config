-- nightfox theme

---@module 'lazy'
---@type LazySpec
return {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function() vim.cmd.colorscheme 'nightfox' end,
}
