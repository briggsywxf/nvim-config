return {
    {
        'nanozuki/tabby.nvim',
        init = function()
            vim.keymap.set('n', '<leader>tt', ':$tabnew<CR>', { noremap = true })
            vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { noremap = true })
            vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { noremap = true })
            vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { noremap = true })
            -- move current tab
            vim.keymap.set('n', '<leader>tmp', ':-tabmove<CR>')
            vim.keymap.set('n', '<leader>tmn', ':+tabmove<CR>')
        end,
        config = function()
            require('tabby.tabline').use_preset('active_wins_at_tail')
        end
    }
}
