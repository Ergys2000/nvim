" set the colorscheme before the lsp server is laoded
" colorscheme gruvbox8_soft
" colorscheme codedark
colorscheme onedark
set termguicolors

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" Sort the suggestions by length
let g:completion_sorting = "length"
" Set snippet autocompletion to ultisnip
let g:completion_enable_snippet = "UltiSnips"

" Start autocompletion in every buffer
autocmd BufEnter * lua require'completion'.on_attach()


" Color highlighting for different lsp messages and signs that appear on the
" left
highlight LspDiagnosticsDefaultError ctermfg=red
      \ guifg=#fa2525 cterm=undercurl gui=undercurl cterm=undercurl
highlight LspDiagnosticsDefaultWarning ctermfg=yellow 
      \ guifg=BrightYellow cterm=underline gui=NONE cterm=NONE
highlight LspDiagnosticsDefaultHint ctermfg=yellow 
      \guifg=#f5dd42 cterm=underline gui=NONE cterm=NONE

call sign_define("LspDiagnosticsSignError", 
      \ {"text": "", "texthl": "LspDiagnosticsDefaultError"})

call sign_define("LspDiagnosticsSignWarning", 
      \ {"text": "", "texthl": "LspDiagnosticsDefaultWarning"})

call sign_define("LspDiagnosticsSignHint", 
      \ {"text": "", "texthl": "LspDiagnosticsDefaultHint"})
