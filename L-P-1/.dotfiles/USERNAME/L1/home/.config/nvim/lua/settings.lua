    -- Settings

local o = vim.opt
local g = vim.g
local map = vim.api.nvim_set_keymap
local opts = { silent = true, noremap = true }

-- Keybinds
g.mapleader = ' '

--local function map(mode, combo, mapping, opts)
--    local options = {noremap = true}
--    if opts then
--      options = vim.tbl_extend('force', options, opts)
--    end
--    vim.api.nvim_set_keymap(mode, combo, mapping, options)
--end

  -- Floaterm Keybindings
map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true })
map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true })

  -- Telescope Keybindings
map('n', '<C-f>', ':Telescope find_files <CR>', { noremap = true })
map('n', '<C-g>', ':Telescope live_grep <CR>', {noremap = true })

  -- Nvim-Tree-Lua Keybindings
map('n', '<C-z>', ':NvimTreeToggle <CR>', { noremap = true })

  -- Vim-Wiki Keybindings
map('n', '<C-w>', ':VimwikiIndex <CR>', { noremap = true })

-- Performance
o.lazyredraw = true;
o.shell = "zsh"
o.shadafile = "NONE"

-- Colors
o.termguicolors = true

-- Undo
o.undofile = true

-- Indentation
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 4
o.shiftround = true
o.expandtab = true
o.scrolloff = 3

-- Clipboard
o.clipboard = "unnamedplus"

-- UI
o.cursorline = true
o.relativenumber = true
o.number = true

-- .viminfo
o.viminfo = ""
o.viminfofile = "NONE"
