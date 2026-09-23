-- Function for defining keymaps
local function map(mode, key, cmd, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, key, cmd, options)
end

-- Neovim Keymaps
map('i', "jk", "<Esc>l", { desc = "Exit normal mode"})
map('n', '<leader>nh', ':noh<CR>', { desc = '[N]o [H]ighlight' })

-- LSP Keymaps
map("n", "<leader>of", function() vim.diagnostic.open_float() end, { desc = "[O]pen [F]loat" })
map("n", "[d", function() vim.diagnostic.goto_prev() end, { desc = "Go to previous diagnostic" })
map("n", "]d", function() vim.diagnostic.goto_next() end, { desc = "Go to next diagnostic" })
map('n', '<leader>fb', '<cmd>lua vim.lsp.buf.format()<cr>', { desc = '[F]ormat Current [B]uffer' })

-- Telescope Keymaps
local telescope = require('telescope.builtin')

map('n', '<leader>tf', telescope.find_files, { desc = '[F]ind [F]iles' })
map('n', '<leader>tg', telescope.live_grep, { desc = 'Live [G]rep' })
map('n', '<leader>tb', telescope.current_buffer_fuzzy_find, { desc = '[B]uffer find' })


-- Neotree Keymaps
map('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle Explorer' })
map('n', '<leader>be', ':Neotree buffers toggle<CR>', { desc = 'Toggle Buffers' })
map('n', '<leader>ge', ':Neotree float git_status toggle<CR>', { desc = 'Toggle Git Status' })

map('n', '<leader>E', ':Neotree reveal toggle<CR>', { desc = 'Toggle Explorer and Reveal File' })

-- Vim-TMUX-Navigator Keymaps
map('n', '<M-h>', ':TmuxNavigateLeft<CR>')
map('n', '<M-j>', ':TmuxNavigateDown<CR>')
map('n', '<M-k>', ':TmuxNavigateUp<CR>')
map('n', '<M-l>', ':TmuxNavigateRight<CR>')

-- Markview Keymaps
map('n', '<leader>mt', ':Markview toggle<CR>', { desc = '[M]arkview [T]oggle for buffer' })
