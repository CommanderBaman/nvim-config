-- sonokai colorscheme

---@module 'lazy'
---@type LazySpec
return {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
        -- Set the variant to andromeda before loading
        vim.g.sonokai_style = 'maia'
        vim.g.sonokai_enable_italic = true
        -- Load the colorscheme
        vim.cmd.colorscheme 'sonokai'
    end,
}
