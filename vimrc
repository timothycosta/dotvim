" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
" Plugins
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tweekmonster/nvim-api-viewer' " usage: NvimAPI
call plug#end()

set encoding=utf-8
syntax on

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set diffopt+=vertical
set tabstop=4
set expandtab
set shiftwidth=4
set mouse=a
set ignorecase
set background=dark
set number relativenumber
set nowrap

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

filetype indent on 

color monokai

let mapleader = " "

" 'Edit Vimrc'
nnoremap <leader>ev $MYVIMRC<CR>
" 'Write Source' current file"
nnoremap <leader>ws :w<CR>:source %<CR>
" Easier scroll
nnoremap J 3
nnoremap K 3
" Replace original functions from above
nnoremap <leader>J J
nnoremap <leader>K K
" Newline above/below
nnoremap <CR> o<esc>
nnoremap <S-Enter> O<esc>
nnoremap <F5> :NERDTreeToggle<CR>
" Window split movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Bubble text up/down
nnoremap <Up> ddkP
nnoremap <Down> ddp
" Tab switching
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>
" Insert a single character
nnoremap <C-i> i_<ESC>
" Disable arrows in insert mode
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
" Don't use enter when quitting 
cnoremap qq q<CR>
