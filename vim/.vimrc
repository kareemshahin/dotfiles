" plugins!
let g:coc_global_extensions = [
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-html',
\ 'coc-css',
\ 'coc-yaml',
\ 'coc-solargraph',
\ 'coc-python',
\ 'coc-go',
\ ]
call plug#begin(expand('~/.vim/plugged'))
Plug 'morhetz/gruvbox'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'w0rp/ale'
Plug 'chriskempson/base16-vim'
Plug 'hashivim/vim-terraform'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-dotenv'
Plug 'janko/vim-test'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

syntax on
filetype on
filetype plugin indent on
set backspace=indent,eol,start
set autoindent
set hidden
set tabstop=2 shiftwidth=2 expandtab
set showcmd
set showmatch
set visualbell
set noerrorbells
set ttimeoutlen=0
set runtimepath^=~/.vim/bundle/ctrlp.vim

" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" golang (vim-go)
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" ctrl-p
let g:ctrlp_show_hidden = 1

" status line shit
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
"set statusline+=%#warningmsg#
"set statusline+=%*
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=1

" Remove trailing whitespace on save
function! s:TrimTrailingWhitespace()
  let s:view = winsaveview()
  try
    %s/\s\+$//e
  finally
    call winrestview(s:view)
  endtry
endfunction
autocmd BufWritePre * call s:TrimTrailingWhitespace()

colorscheme nord
