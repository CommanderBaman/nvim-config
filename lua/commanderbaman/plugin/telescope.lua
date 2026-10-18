-- fuzzy finder
return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    event = 'VimEnter',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- native telescope sorter
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        -- vim uses telescope for all selects
        { 'nvim-telescope/telescope-ui-select.nvim' },
        -- better icons
        { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    find_command = {
                        'rg',
                        '--files',
                        '--hidden',
                        '--glob',
                        '!**/.git/*',
                    },
                },
            },
            extensions = {
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown(),
                },
            },
        }

        -- enable telescope extensions
        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')

        -- keymaps for telescope
        local builtin = require 'telescope.builtin'
        vim.keymap.set(
            'n',
            '<leader>sh',
            builtin.help_tags,
            -- typochecker:disable-next-line
            { desc = '[S]earch [H]elp' }
        )
        vim.keymap.set(
            'n',
            '<leader>sk',
            builtin.keymaps,
            -- typochecker:disable-next-line
            { desc = '[S]earch [K]eymaps' }
        )
        vim.keymap.set(
            'n',
            '<leader>sf',
            builtin.find_files,
            -- typochecker:disable-next-line
            { desc = '[S]earch [F]iles' }
        )
        vim.keymap.set(
            'n',
            '<leader>ss',
            builtin.builtin,
            -- typochecker:disable-next-line
            { desc = '[S]earch [S]elect Telescope' }
        )
        vim.keymap.set(
            'n',
            '<leader>sw',
            builtin.grep_string,
            -- typochecker:disable-next-line
            { desc = '[S]earch current [W]ord' }
        )
        vim.keymap.set(
            'n',
            '<leader>sg',
            builtin.live_grep,
            -- typochecker:disable-next-line
            { desc = '[S]earch by [G]rep' }
        )
        vim.keymap.set(
            'n',
            '<leader>sd',
            builtin.diagnostics,
            -- typochecker:disable-next-line
            { desc = '[S]earch [D]iagnostics' }
        )
        vim.keymap.set(
            'n',
            '<leader>sr',
            builtin.resume,
            -- typochecker:disable-next-line
            { desc = '[S]earch [R]esume' }
        )
        vim.keymap.set(
            'n',
            '<leader>s.',
            builtin.oldfiles,
            -- typochecker:disable-next-line
            { desc = '[S]earch Recent Files ("." for repeat)' }
        )
        vim.keymap.set('n', '<leader>sl', function()
            local opts = {}
            opts.prompt_title = 'Find all files except VCS'
            opts.find_command = {
                'rg',
                '--files',
                '--no-ignore',
                '--hidden',
                '--glob',
                '!**/.{git,jj}/*',
            }
            builtin.find_files(opts)
            -- typochecker:disable-next-line
        end, { desc = '[S]earch a[L]l files except VCS' })
        vim.keymap.set(
            'n',
            '<leader><leader>',
            builtin.buffers,
            { desc = '[ ] Find existing buffers' }
        )
        vim.keymap.set(
            'n',
            '<leader>/',
            function()
                builtin.current_buffer_fuzzy_find(
                    require('telescope.themes').get_dropdown {
                        winblend = 10,
                        previewer = false,
                    }
                )
            end,
            -- typochecker:disable-next-line
            { desc = '[/] Fuzzily search in current buffer' }
        )
        vim.keymap.set(
            'n',
            '<leader>s/',
            function()
                builtin.live_grep {
                    grep_open_files = true,
                    prompt_title = 'Live Grep in Open Files',
                }
            end,
            -- typochecker:disable-next-line
            { desc = '[S]earch [/] in Open Files' }
        )
        vim.keymap.set(
            'n',
            '<leader>sn',
            function() builtin.find_files { cwd = vim.fn.stdpath 'config' } end,
            -- typochecker:disable-next-line
            { desc = '[S]earch [N]eovim files' }
        )
    end,
}
