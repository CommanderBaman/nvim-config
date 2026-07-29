-- material deep ocean theme

---@module 'lazy'
---@type LazySpec
return {
    'marko-cerovac/material.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    enabled = false,
    config = function()
        vim.g.material_style = 'deep ocean'
        vim.cmd.colorscheme 'material'
    end,
}
