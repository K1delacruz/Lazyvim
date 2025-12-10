-- bootstrap lazy.nvim, LazyVim and your plugins

----------------------------------------------------
-- LEADER KEY (IMPORTANT FOR PLUGINS)
----------------------------------------------------
vim.g.mapleader = " " -- Space ang leader key
vim.g.maplocalleader = " " -- Space din ang local leader

----------------------------------------------------
-- BASIC UI
----------------------------------------------------
vim.opt.termguicolors = true -- Buong support sa 24-bit colors
vim.opt.cursorline = true -- Highlight ang kasalukuyang linya
vim.opt.signcolumn = "yes" -- Laging may space para sa git/LSP icons
vim.opt.showmode = false -- Huwag ipakita ang INSERT/NORMAL sa baba
vim.opt.scrolloff = 8 -- May 8 lines na buffer sa taas/baba ng cursor
vim.opt.sidescrolloff = 8 -- May buffer din sa kaliwa/kanan

----------------------------------------------------
-- LINE NUMBERS
----------------------------------------------------
vim.opt.number = true -- Ipakita ang actual line number
vim.opt.relativenumber = true -- Relative numbering para sa mabilis na galaw

----------------------------------------------------
-- WRAPPING SETTINGS
----------------------------------------------------
vim.opt.wrap = true -- I-wrap ang mahahabang linya
vim.opt.linebreak = true -- Huwag hatiin ang salita kapag nag-wrap
vim.opt.breakindent = true -- Sundan ang indent kahit naka-wrap

----------------------------------------------------
-- INDENTATION (PRO STANDARD)
----------------------------------------------------
vim.opt.tabstop = 2 -- Isang TAB = 2 spaces
vim.opt.shiftwidth = 2 -- Auto-indent = 2 spaces
vim.opt.softtabstop = 2 -- Soft tab = 2 spaces din
vim.opt.expandtab = true -- Gumamit ng spaces imbes na tunay na TAB
vim.opt.smartindent = true -- Smart auto-indent para sa code
vim.opt.autoindent = true -- I-copy ang indent ng previous line

----------------------------------------------------
-- SEARCH BEHAVIOR (PRO STYLE)
----------------------------------------------------
vim.opt.ignorecase = true -- Huwag pansinin ang case sa search
vim.opt.smartcase = true -- Pero maging case-sensitive kung may capital
vim.opt.incsearch = true -- Habang nagta-type ka, naghahanap na agad
vim.opt.hlsearch = true -- Huwag i-highlight lahat ng results

----------------------------------------------------
-- CLIPBOARD
----------------------------------------------------
vim.opt.clipboard = "unnamedplus" -- Makipag-share sa system clipboard

----------------------------------------------------
-- FILE & BUFFER BEHAVIOR
----------------------------------------------------
vim.opt.hidden = true -- Payagan ang unsaved buffers sa background
vim.opt.swapfile = false -- Huwag gumawa ng swap file
vim.opt.backup = false -- Huwag gumawa ng backup files
vim.opt.undofile = true -- I-save ang undo history kahit isara ang file

----------------------------------------------------
-- PERFORMANCE OPTIMIZATION
----------------------------------------------------
vim.opt.updatetime = 250 -- Mas mabilis ang git/LSP updates
vim.opt.timeoutlen = 300 -- Mas mabilis ang key-combo response
vim.opt.lazyredraw = true -- Mas smooth ang scrolling

----------------------------------------------------
-- SPLITS BEHAVIOR
----------------------------------------------------
vim.opt.splitright = true -- New vertical splits sa kanan
vim.opt.splitbelow = true -- New horizontal splits sa ibaba

----------------------------------------------------
-- MOUSE SUPPORT
----------------------------------------------------
vim.opt.mouse = "a" -- I-enable ang mouse sa lahat ng mode

----------------------------------------------------
-- COMMAND LINE EXPERIENCE
----------------------------------------------------
vim.opt.cmdheight = 1 -- Isang linya lang ang command area
vim.opt.completeopt = { "menuone", "noselect" } -- Mas maayos ang autocomplete menu

--  <=================== ===================>>

----------------------------------------------------
-- PRO KEY MAPS
----------------------------------------------------
-- BASIC KEYMAP SETTINGS
----------------------------------------------------
vim.keymap.set("n", "<Space>", "<Nop>") -- I-disable ang default space behavior
vim.opt.timeoutlen = 300 -- Mas mabilis ang keymap response

----------------------------------------------------
-- FILE OPERATIONS
----------------------------------------------------
vim.keymap.set("n", "<C-s>", ":w<CR>") -- Ctrl+S = Save file (Normal mode)
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>") -- Ctrl+S = Save kahit nasa Insert
vim.keymap.set("n", "<C-q>", ":q<CR>") -- Ctrl+Q = Quit
vim.keymap.set("n", "<C-x>", ":x<CR>") -- Ctrl+X = Save + Quit

----------------------------------------------------
-- BETTER NAVIGATION
----------------------------------------------------
vim.keymap.set("n", "<C-h>", "<C-w>h") -- Lumipat sa kaliwang split
vim.keymap.set("n", "<C-j>", "<C-w>j") -- Lumipat sa ibabang split
vim.keymap.set("n", "<C-k>", "<C-w>k") -- Lumipat sa itaas na split
vim.keymap.set("n", "<C-l>", "<C-w>l") -- Lumipat sa kanang split

----------------------------------------------------
-- WINDOW MANAGEMENT
----------------------------------------------------
--[[
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = '[S]plit [V]ertical' }) -- Space+sv = Vertical split
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = '[S]plit [H]orizontal' }) -- Space+sh = Horizontal split
vim.keymap.set('n', '<leader>se', '<C-w>=', { desc = '[S]plit [E]qual size' }) -- Space+se = Pantay ang laki ng splits
vim.keymap.set('n', '<leader>sx', ':close<CR>', { desc = '[S]plit E[x]it (close)' }) -- Space+sx = Isara ang current split ]]
--
----------------------------------------------------
-- BUFFER MANAGEMENT
----------------------------------------------------
vim.keymap.set("n", "<Tab>", ":bnext<CR>") -- Tab = Next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>") -- Shift+Tab = Previous buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "[b]uffer [d]elete" })
----------------------------------------------------
-- FAST ESCAPE
----------------------------------------------------
vim.keymap.set("i", "jk", "<Esc>") -- jk = mabilis na exit sa insert mode

----------------------------------------------------
-- MOVE LINES UP/DOWN (PRO FEATURE)
----------------------------------------------------
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- Alt+j = Ilipat ang line pababa
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- Alt+k = Ilipat ang line pataas
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi") -- Gumagalaw kahit naka-insert
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")

----------------------------------------------------
-- VISUAL MODE LINE MOVE
----------------------------------------------------
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- Ilipat selected pababa
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- Ilipat selected pataas

require("config.lazy")
