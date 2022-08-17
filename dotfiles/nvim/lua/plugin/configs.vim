" ==================== [Plugins] ====================


" ==================== Neoformat ====================
augroup fmt
    autocmd!
    autocmd BufWritePre * Neoformat
    " autocmd BufWritePre * undojoin | Neoformat
augroup END
  
let g:neoformat_c_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['-style=Google'],
    \ }
let g:neoformat_enabled_python = ['black']
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_cpp = ['clangformat']

" ==================== NerdTree =====================
nnoremap <leader>tt :NERDTreeToggle<cr>
nnoremap <leader>tf :NERDTreeFocus<cr>
let NERDTreeMapOpenInTab='<Nop>'