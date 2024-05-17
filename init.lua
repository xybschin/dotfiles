require "plugins"

local g = vim.g

-- Leader/local leader
g.mapleader = [[ ]]
g.maplocalleader = [[,]]

local opt = vim.opt

opt.textwidth = 100
opt.scrolloff = 7
opt.wildignore = { "*.o", "*~", "*.pyc" }
opt.wildmode = "longest,full"
opt.whichwrap:append "<,>,h,l"
opt.inccommand = "nosplit"
opt.lazyredraw = true
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true
opt.tabstop = 2
opt.softtabstop = 0
opt.expandtab = true
opt.shiftwidth = 2
opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.laststatus = 3
opt.showmode = false
opt.shada = [['20,<50,s10,h,/100]]
opt.hidden = true
opt.shortmess:append "c"
opt.joinspaces = false
opt.guicursor = [[n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50]]
opt.updatetime = 100
opt.conceallevel = 2
opt.concealcursor = "nc"
opt.previewheight = 5
opt.undofile = true
opt.synmaxcol = 500
opt.display = "msgsep"
opt.cursorline = true
opt.modeline = false

opt.mouse = ""

opt.signcolumn = "yes:1"
opt.cmdheight = 0
opt.splitbelow = true
opt.splitright = true
opt.timeoutlen = 200
opt.fillchars = [[vert:│,horiz:─,eob: ]]
opt.termguicolors = true

-- Keybidings
local silent = { silent = true, noremap = true }

-- Quit, close buffers, etc.
local map = vim.api.nvim_set_keymap
map("n", "<leader>q", "<cmd>qa<cr>", silent)
map("n", "<leader>x", "<cmd>x!<cr>", silent)

-- Save buffer
map("i", "<c-s>", "<esc><cmd>w<cr>a", silent)
map("n", "<leader>w", "<cmd>w<cr>", silent)

-- Window movement
map("n", "<a-h>", "<c-w>h", silent)
map("n", "<a-j>", "<c-w>j", silent)
map("n", "<a-k>", "<c-w>k", silent)
map("n", "<a-l>", "<c-w>l", silent)

-- Tab movement
map("n", "<a-,>", "<cmd>tabprevious<cr>", silent)
map("n", "<a-.>", "<cmd>tabnext<cr>", silent)

-- Exit terminal mode
map("t", "<c-q>", "<c-\\><c-n>", silent)

-- NvimTree
map("n", "<leader>s", ":NvimTreeFocus<Return>", silent)
map("n", "<C-b>", ":NvimTreeToggle<Return>", silent)
