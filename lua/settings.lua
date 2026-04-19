vim.g.mapleader = " "
-- Prevents showing extra messages when using completion
-- vim.opt.shortmess:append("c")
-- Sets the height of the command line area at the bottom
vim.opt.cmdheight = 1
-- Displays the line number for the current line
vim.opt.number = true
-- Displays line numbers relative to the current cursor position
vim.opt.relativenumber = true
-- Time in milliseconds to wait for a mapped sequence to complete
vim.opt.timeoutlen = 500
-- Time in milliseconds of inactivity before calling CursorHold or writing to swap
vim.opt.updatetime = 4000
-- Ignores case when searching patterns
vim.opt.ignorecase = true
-- Automatically switches to case-sensitive search if a capital letter is used
vim.opt.smartcase = true
-- Enables 24-bit RGB colors in the terminal
vim.opt.termguicolors = true
-- Configures the behavior of the insert mode completion menu
vim.opt.completeopt = "menu,menuone,noselect,popup"
-- Number of spaces that a <Tab> character represents
vim.opt.tabstop = 4
-- Number of spaces to use for each step of automatic indentation
vim.opt.shiftwidth = 4
-- Number of spaces that a <Tab> counts for during editing operations
vim.opt.softtabstop = 4
-- Converts tabs into spaces when typing
vim.opt.expandtab = true
-- Automatically inserts an extra level of indentation in some cases
vim.opt.smartindent = true
-- Makes <Tab> insert 'shiftwidth' number of spaces at the start of a line
vim.opt.smarttab = true

-- use system clipboard
vim.opt.clipboard = "unnamed"
-- show inley hints
vim.lsp.inlay_hint.enable(true)
-- prevent wrapping
vim.o.wrap = false

-- use tabs to when open new files (only if bufferline is not used)
vim.o.switchbuf = 'usetab,newtab'
-- How to open new files
-- 0 — open in same window (default)
-- 1 — open in horizontal split
-- 2 — open in vertical split
-- 3 — open in new tab ✅
-- 4 — open in previous window
vim.g.netrw_browse_split = 3
