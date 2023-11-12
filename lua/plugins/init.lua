local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Basic plugins with minimal config here
return {
    -- colorscheme
    {
        'rebelot/kanagawa.nvim',
    },
    -- autopairs
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        opts = {}
    },
    -- undo branch history
    {
        'mbbill/undotree',
        init = function()
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Undo tree'})
        end
    },
    -- git integration
    'tpope/vim-fugitive',
    -- show keybinds
    {'folke/which-key.nvim', opts = {}},
    -- show line indentations
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {}
    },
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                icons_enabled = true,
                theme = 'iceberg_dark',
                component_separators = '|',
                section_separators = ''
            },
        },
    },
}
