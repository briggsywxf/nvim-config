return {
    {
        'akinsho/toggleterm.nvim',
        init = function()
            vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
            vim.keymap.set('n', '<leader>``', ':ToggleTerm direction=float<CR>',
                {
                    noremap = true,
                    desc = 'Float terminal'
                })
            vim.keymap.set('n', '<leader>`t', ':ToggleTerm direction=tab<CR>',
                {
                    noremap = true,
                    desc = 'Tab terminal'
                })
            vim.keymap.set('n', '<leader>`v', ':ToggleTerm direction=vertical size=60<CR>')
        end,
        config = function()
            require('toggleterm').setup()
        end
    }
}
