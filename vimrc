" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
" Plugins
Plug 'crusoexia/vim-monokai'
Plug 'keith/swift.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tweekmonster/nvim-api-viewer' " usage: NvimAPI
call plug#end()

" Text settings
set encoding=utf-8
syntax on
colorscheme monokai
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
autocmd BufEnter *.swift colorscheme monokai

" Search settings
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
set nowrap
set clipboard=unnamed

set number
" This ended up being annoying
" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END

filetype indent on 


let mapleader = " "

" 'Edit Vimrc'
nnoremap <leader>ev $MYVIMRC<CR>
" 'Write Source' current file"
nnoremap <leader>ws :w<CR>:source %<CR>
" 'Quit all windows'
nnoremap <leader>q :qa<CR>
" Easier black hole
nnoremap <leader>_ "_
" Edit from end
nnoremap <leader>e ea
nnoremap <leader>E Ea
" Easier scroll
nnoremap J 3
nnoremap K 3
nnoremap H z3h
nnoremap L zl3
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
" Tab switching
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>
" Insert a single character
nnoremap <C-i> i_<ESC>
" Don't use enter when quitting 
cnoremap qq q<CR>
" Re-select after yanking
vnoremap y ygv
