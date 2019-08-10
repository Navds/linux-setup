 " Automate plugin manager installation (vim-plug)

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



" Plugins

call plug#begin('~/.vim/plugged')

Plug 'NLKNguyen/papercolor-theme'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'hdima/python-syntax'
Plug 'moby/moby' , {'rtp': '/contrib/syntax/vim/'} " Dockerfile
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'	" git
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'


call plug#end()

" Theming & display

colorscheme PaperColor
set background=dark
set number relativenumber numberwidth=5

set shiftwidth=4
set shiftround

let g:ale_echo_cursor = 0 " fix cursor disapper on erroneous line
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'override' : {
  \         'color00' : ['#080808', '232'],
  \         'linenumber_bg' : ['#080808', '232']
  \       }
  \     }
  \   }
  \ }

let g:airline_theme='ubaryd'
" let g:airline_theme='papercolor'

set enc=utf-8
set fileencoding=utf-8
let g:ctrlp_show_hidden = 1

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Editing

set autoindent
filetype plugin indent on

" Keybindings
nmap - ddp
nmap + ddkp
imap jj <Esc>
map <C-n> :NERDTreeToggle<CR>

