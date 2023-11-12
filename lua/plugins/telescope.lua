return { {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',

    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-file-browser.nvim',
        'nvim-tree/nvim-web-devicons',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build =
            'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
        }
    },

    init = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {
            desc = 'Find files',
            noremap = true
        })
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {
            desc = 'Git files',
            noremap = true
        })
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, {
            desc = 'Search files',
            noremap = true
        })
        vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {
            desc = 'Browse files',
            noremap = true
        })
        vim.keymap.set('n', '<leader>fc', ':Telescope buffers<CR>', {
            desc = 'Current buffers',
            noremap = true
        })
    end,

    config = function()
        require('telescope').setup {
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = 'smart_case'
                },
                file_browser = {
                    -- disable netrw
                    hijack_netrw = true,
                    mappings = {
                        ['i'] = {

                        },
                        ['n'] = {

                        },
                    },
                },
            },
        }
        require('telescope').load_extension('fzf')
        require('telescope').load_extension('file_browser')
    end
} }
