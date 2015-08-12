set nocompatible
set backspace=2

"Enable filetypes
filetype on
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Colors
syntax on
set t_Co=256
set background=dark
colorscheme vibrantink

"Fast saving
map <leader>w :w!<CR>

"Fast closing
map <leader>b :bd<CR>
map <leader>B :bufdo bd<CR>

"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
map <leader>, :tabprevious<CR>
map <leader>. :tabnext<CR>
map <leader>= :tabnew<CR>
map <leader>- :tabclose<CR>

"Show command in bottom right portion of the screen
set showcmd

"Show line numbers
set number

"Indent
set smartindent
set autoindent

"Highlight search
set hlsearch

"Set incremental searching
set incsearch

"Case insensitive search
set ignorecase
set smartcase

"Show matching brackets when text indicator is over them
set showmatch

" Show trailing spaces
set list listchars=tab:»·,trail:·

"Clear search highlighting
nmap <leader>' :let @/ = ""<CR>

" Toggle between paste mode
nnoremap <Leader>p :set paste!<cr>

" Close all splits except current
nnoremap <Leader>o :only<cr>

" _ : Quick horizontal splits
nnoremap _ :sp<cr>

" | : Quick vertical splits
nnoremap <bar> :vsp<cr>

"Pathogen
execute pathogen#infect()

"NERDTREE
nmap <C-e> :NERDTreeToggle<cr>
nmap <leader>g :NERDTreeFind<CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
nmap <leader>f :CtrlP<CR>

" visible active buffers
hi StatusLine cterm=NONE ctermbg=darkgreen ctermfg=black gui=bold guibg=green guifg=black
hi StatusLineNC cterm=NONE ctermbg=darkgray ctermfg=lightgray gui=bold guibg=black guifg=lightgray

" format entire file (going back to the original cursor location)
nmap <Leader>fef ggVG=``

" Toggle relative line numbers
nnoremap <silent><leader>n :set relativenumber!<cr>

" Go to end of line in insert mode
inoremap <c-e> <esc>A

" Go to beginning of line in insert mode
inoremap <c-a> <esc>I
