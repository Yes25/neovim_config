-- Treesitter
vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", 
    version = 'main' },
})

-- Mason
vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" }
})
require("mason").setup({})

vim.pack.add({
  { src = "https://github.com/akinsho/bufferline.nvim" }
})

-- Neotree with dependencies
vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons" }
})
vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" }
})
vim.pack.add({
  { src = "https://github.com/MunifTanjim/nui.nvim" }
})
vim.pack.add({
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" }
})
require('neo-tree').setup({
--    window = {
--    mappings = {
--      ['<CR>'] = 'open_tabnew',
--    },
--  },
})

-- Bufferline (also depends on nvim-web-devicons)
vim.pack.add({
  { src = "https://github.com/akinsho/bufferline.nvim" }
})
vim.opt.termguicolors = true
require("bufferline").setup{}

-- fzf-lua (also depends on nvim-web-devicons)
vim.pack.add({
  { src = "https://github.com/ibhagwan/fzf-lua" }
})


-- which-key
vim.pack.add({
  { src = "https://github.com/folke/which-key.nvim" }
})
