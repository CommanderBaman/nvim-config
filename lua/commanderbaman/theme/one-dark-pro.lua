return {
    'olimorris/onedarkpro.nvim',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
        -- load color scheme on loading
        vim.cmd.colorscheme 'onedark'
    end,
}
