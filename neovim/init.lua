-- Basic settings
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")

vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.autoindent = true
vim.opt.hidden = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.visualbell = true
vim.opt.errorbells = false
vim.opt.ttimeoutlen = 0

vim.diagnostic.config({ virtual_text = true })
--vim.diagnostic.config({ virtual_text = false, virtual_lines = { current_line = true }, })

vim.opt.runtimepath:prepend("~/.vim/bundle/ctrlp.vim")

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Space as leader
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = ' '

-- Folding
-- vim.opt.foldenable = false

-- Terraform
vim.g.terraform_align = 1
vim.g.terraform_fmt_on_save = 1

-- Golang (vim-go)
vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'

-- Buffer navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- NERDTree toggle
-- vim.keymap.set('n', '<leader>t', ':NERDTreeToggle<CR>', {
--   noremap = true
-- })

-- nvim-toggle
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true })

-- fzf-lua
vim.keymap.set('n', '<leader>f', ':FzfLua<CR>', { noremap = true })

-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- UI
vim.opt.termguicolors = true
-- vim.cmd("colorscheme nord")
-- vim.cmd("colorscheme gruvbox")

-- Syntastic (optional, if used)
-- vim.g.syntastic_enable_signs = 1
-- vim.g.syntastic_auto_loc_list = 1

-- Optional statusline (commented out, as in original)
-- vim.opt.statusline = '[%n] %<%.99f %h%w%m%r%y %{fugitive#statusline()}%{exists("*CapsLockStatusline")?CapsLockStatusline():""}%=%-16( %l,%c-%v %) %P'


require("config.lazy")
