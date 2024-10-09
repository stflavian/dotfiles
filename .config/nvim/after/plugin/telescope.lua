local builtin = require('telescope.builtin')

-- local commands
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fv', builtin.treesitter, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})

-- git commands
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})

-- change layout
require('telescope').setup{
    defaults = {
        layout_strategy = 'horizontal',
        layout_config = { 
            height = 0.9, 
            width = 0.9,
            preview_width = 0.7, 
        },
    },
}
