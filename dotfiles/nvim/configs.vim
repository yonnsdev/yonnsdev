" ==================== [Plugins] ====================

" ====================    FZF    ====================
let g:fzf_history_dir = '~/.local/share/fzf-history'
let $FZF_DEFAULT_OPTS="--bind \"ctrl-j:preview-down,ctrl-k:preview-up\""
nmap <leader>ff :Files<cr>
nmap <leader>fl :BLines<cr>
nmap <leader>ft :BTags<cr>
nmap <leader>fg :GFiles?<cr>
nmap <leader>fc :Commits<cr>

" ==================== Neoformat ====================
augroup fmt
    autocmd!
    autocmd BufWritePre * Neoformat
    " autocmd BufWritePre * undojoin | Neoformat
augroup END
  
let g:neoformat_c_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{BasedOnStyle: Chromium, IndentWidth: 4, AccessModifierOffset: -2, IndentCaseLabels: false, NamespaceIndentation: All, ObjCBlockIndentWidth: 4, ColumnLimit: 0, AllowShortFunctionsOnASingleLine: Empty, SortIncludes: Never, AlignArrayOfStructures: Right, ReflowComments: false, ColumnLimit: 120, PointerAlignment: Right}"'],
    \ }
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{BasedOnStyle: Chromium, IndentWidth: 4, AccessModifierOffset: -2, IndentCaseLabels: false, NamespaceIndentation: All, ObjCBlockIndentWidth: 4, ColumnLimit: 0, AllowShortFunctionsOnASingleLine: Empty, SortIncludes: Never, AlignArrayOfStructures: Right, ReflowComments: false, ColumnLimit: 120, PointerAlignment: Right}'],
    \ }
let g:neoformat_enabled_python = ['autopep4']
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_rust = ['rustfmt']

" ==================== NerdTree =====================
nmap <leader>tt :NERDTreeToggle <bar> NERDTreeRefreshRoot<cr>
nmap <leader>tf :NERDTreeFocus <bar> NERDTreeRefreshRoot<cr>
nmap <leader>tr :NERDTreeRefreshRoot<cr>
let NERDTreeMapOpenInTab='<Nop>'

" ====================  Vimux   =====================
let myvimux = 0 
nmap <expr> <leader>mx myvimux==0 ? ':VimuxOpenRunner <bar> let myvimux=1<cr>' : ':VimuxCloseRunner <bar> let myvimux=0<cr>'
autocmd VimLeave * :VimuxCloseRunner

" ====================  Tagbar  =====================
nmap <leader>tb :Tagbar<cr>