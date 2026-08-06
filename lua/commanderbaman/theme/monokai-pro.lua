-- monokai pro machine theme

---@module 'lazy'
---@type LazySpec
return {
    'loctvl842/monokai-pro.nvim',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function() vim.cmd.colorscheme 'monokai-pro-machine' end,
}
