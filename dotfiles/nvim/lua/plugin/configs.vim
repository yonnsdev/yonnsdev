" ==================== [Plugins] ====================


" ==================== Neoformat ====================
augroup fmt
    autocmd!
    autocmd BufWritePre * Neoformat
    " autocmd BufWritePre * undojoin | Neoformat
augroup END
  
let g:neoformat_c_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{ BasedOnStyle: Chromium, IndentWidth: 4, AccessModifierOffset: -2, IndentCaseLabels: false, NamespaceIndentation: All, ObjCBlockIndentWidth: 4, ColumnLimit: 120, AllowShortFunctionsOnASingleLine: Empty, SortIncludes: Never }"'],
    \ }
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{ BasedOnStyle: Chromium, IndentWidth: 4, AccessModifierOffset: -2, IndentCaseLabels: false, NamespaceIndentation: All, ObjCBlockIndentWidth: 4, ColumnLimit: 120, AllowShortFunctionsOnASingleLine: Empty, SortIncludes: Never }"'],
    \ }
let g:neoformat_enabled_python = ['autopep4']
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_cpp = ['clangformat']

" ==================== NerdTree =====================
nnoremap <leader>tt :NERDTreeToggle<cr>
nnoremap <leader>tf :NERDTreeFocus <bar> NERDTreeRefreshRoot<cr>
nnoremap <leader>tr :NERDTreeRefreshRoot<cr>
let NERDTreeMapOpenInTab='<Nop>'