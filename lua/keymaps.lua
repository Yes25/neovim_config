vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle Neotree' }) 
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show diagnostic' })

-- LSP keymaps (works but nicer with FzfLua)
--vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
--vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Go to references' })

-- Move between tabs with Shift-Right/Left
-- vim.keymap.set('n', '<S-h>', 'gT', { desc = 'Previous tab' })
-- vim.keymap.set('n', '<S-l>', 'gt', { desc = 'Next tab' })

-- Move between tabs with Shift-Right/Left with Bufferline
vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>', { desc = 'Next buffer' })

vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Close buffer' })

-- Move across splits
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left split' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom split' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top split' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right split' })

-- FzfLua
vim.keymap.set('n', '<leader>/', ':FzfLua live_grep<CR>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader><leader>', ':FzfLua files<CR>', { desc = 'Search file' })
vim.keymap.set('n', '<leader>fg', ':FzfLua global<CR>', { desc = 'Seach global' })
-- LSP actions
vim.keymap.set('n', 'gd', require('fzf-lua').lsp_definitions, { desc = 'Go to definition' })
vim.keymap.set('n', 'gr', require('fzf-lua').lsp_references, { desc = 'Go to references' })

vim.keymap.set('n', 'gi', require('fzf-lua').lsp_implementations, { desc = 'Go to implementation' })
vim.keymap.set('n', 'gt', require('fzf-lua').lsp_typedefs, { desc = 'Go to type definition' })
vim.keymap.set('n', '<leader>s', require('fzf-lua').lsp_document_symbols, { desc = 'Document symbols' })
vim.keymap.set('n', '<leader>S', require('fzf-lua').lsp_workspace_symbols, { desc = 'Workspace symbols' })

-- Open WhichKey
vim.keymap.set('n', '<leader>?', ':WhichKey<CR>', { desc = 'Open WhichKey' })

-- Open LazyGit
vim.keymap.set('n', '<leader>gg', function()
  local buf = vim.api.nvim_create_buf(false, true)

  vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = math.floor(vim.o.columns * 0.9),
    height = math.floor(vim.o.lines * 0.9),
    row = math.floor((vim.o.lines - height) / 2),
    col = math.floor((vim.o.columns - width) / 2),
    style = 'minimal',
    border = 'rounded',
  })

  vim.fn.termopen('lazygit', {
    on_exit = function()
      vim.api.nvim_win_close(0, true)
    end,
  })

  vim.cmd('startinsert')
end, { desc = 'Open lazygit' })
