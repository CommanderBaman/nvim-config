return {
    'olimorris/onedarkpro.nvim',
    lazy = false,
    priority = 1000,
    enabled = true,
    config = function()
        -- load color scheme on loading
        vim.cmd.colorscheme 'onedark'
    end,
}
