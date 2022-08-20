" Colorscheme
set termguicolors
let g:gruvbox_sign_column = 'bg0'
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Remap exit terminal to C-t
tmap <C-t> <C-\><C-n>

" Move Line Up/Down
nnoremap <silent>mj :m +1<cr> 
nnoremap <silent>mk :m -2<cr>

" Syntax highlighting
syntax on

" Position in code
set number relativenumber
set cul
set ruler
highlight clear CursorLine
highlight cursorlinenr guifg=bold

" Line wrap
set wrap

" Don't make noise
set visualbell

" Default file encoding
set encoding=utf-8

" Function to set tab width to n spaces
function! SetTab(n)
  let &l:tabstop=a:n
  let &l:softtabstop=a:n
  let &l:shiftwidth=a:n
  set expandtab
endfunction

command! -nargs=1 SetTab call SetTab(<f-args>)

" Function to trim extra whitespace in whole file
function! Trim()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

command! -nargs=0 Trim call Trim()

set laststatus=2

" Highlight search results
set hlsearch
set incsearch
set t_Co=256 

" Auto + Smart indent for code
set noexpandtab
set autoindent
set smartindent

" Mouse support
set mouse=a

" Tab amount
set tabstop=4
set shiftwidth=4

" No hidden buffers
set hidden&

" Disable backup files
set nobackup
set nowritebackup


set updatetime=100
set signcolumn=yes

" Customize Pmenu (Popup menu)
set pumheight=15
hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

" Customize VertSplit
highlight VertSplit cterm=NONE, ctermfg=245, gui=NONE
