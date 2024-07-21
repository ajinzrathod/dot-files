set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a

" Code Navigation and Search
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'

" Syntax Highlighting and Language Support
Plugin 'sheerun/vim-polyglot'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'dense-analysis/ale'

" Code Editing and Refactoring
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-repeat'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-commentary'

" Version Control
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" UI Enhancements
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'

" File Management
Plugin 'tpope/vim-vinegar'

" NerdTree
Plugin 'preservim/nerdtree'

" Miscellaneous
Plugin 'mbbill/undotree'
Plugin 'junegunn/goyo.vim'
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" Enable line numbers
set number

" Enable relative line numbers
" set relativenumber

" Function to toggle between relative and absolute line numbers
function! ToggleNumber()
  if &relativenumber
    set norelativenumber
    set number
  else
    set relativenumber
    set number
  endif
endfunction


" Set the leader key to space
let mapleader = " "

" Enable line numbers
set number
set relativenumber

" Function to toggle between relative and absolute line numbers
function! ToggleNumber()
  if &relativenumber
    set norelativenumber
    set number
  else
    set relativenumber
    set number
  endif
endfunction

" Key binding to toggle line numbers
nnoremap <leader>l :call ToggleNumber()<CR>

" Save the current file with <leader>w
nnoremap <leader>w :w<CR>

" Quit Vim with <leader>q
nnoremap <leader>q :q<CR>

" Save and quit with <leader>x
nnoremap <leader>x :wq<CR>

" nnoremap <C-b> :NERDTreeToggle<CR>
" Open NERDTree with <leader>n
nnoremap <leader>n :NERDTreeToggle<CR>

" Highlight search
nnoremap // :nohlsearch<CR>

" Normal mode: Comment or uncomment the current line or selected lines
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>

" For visual block mode
xnoremap <C-_> :Commentary<CR>

" Automatically go to the last known position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Show number of lines in each file in NERD
let g:NERDTreeFileLines = 1

" Show hidden files
let NERDTreeShowHidden=1

" Close Vim if NERDTree is the only window remaining
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Auto-open NERDTree when vim starts and move cursor to editor
au VimEnter *  NERDTree | wincmd p

" Map Ctrl+l to move to the right window
nnoremap <C-l> <C-w>l

" Map Ctrl+k to move to the upper window
nnoremap <C-k> <C-w>k

" Map Ctrl+j to move to the lower window
nnoremap <C-j> <C-w>j

" Map Ctrl+h to move to the left window
nnoremap <C-h> <C-w>h
