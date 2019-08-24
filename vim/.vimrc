" Automate plugin manager installation (vim-plug)

if (has('nvim') && empty(glob('~/.local/share/nvim/site/autoload/plug.vim')))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
endif



" Plugins

call plug#begin('~/.vim/plugged')

" themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/wombat256.vim'

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
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mattn/emmet-vim'

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Plug 'neoclide/coc.nvim', {'branch': 'release'} " code completion

" deoplete
if has('nvim')
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
" let g:deoplete#enable_at_startup = 1

" Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}

call plug#end()

" Theming & display

colorscheme PaperColor
" colorscheme wombat256mod
set background=dark
set number relativenumber numberwidth=5

set shiftwidth=4
set shiftround
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let g:ale_echo_cursor = 0 " fix cursor disappear on erreneous line
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

