" plugins!
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'w0rp/ale'
Plug 'chriskempson/base16-vim'
Plug 'hashivim/vim-terraform'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
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
set background=dark
set runtimepath^=~/.vim/bundle/ctrlp.vim
set t_Co=256
set termguicolors
set background=dark
"let g:gruvbox_contrast_light = 'medium'
"colorscheme gruvbox
colorscheme base16-eighties

" terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" status line shit
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %p%%
set statusline+=\ %l:%c

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
