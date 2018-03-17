" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
" Plugins
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-syntastic/syntastic'
Plug 'keith/swift.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax on

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set tabstop=4
set expandtab
set shiftwidth=4
set mouse=a
set ignorecase
set background=dark
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

filetype indent on 

color monokai

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
nmap <F5> :NERDTreeToggle<CR>
" Window split movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Bubble text up/down
nnoremap <Up> ddkP
nnoremap <Down> ddp
" Change tabs
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>
