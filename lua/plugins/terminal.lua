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
        end,
        config = function()
            require('toggleterm').setup()
        end
    }
}
