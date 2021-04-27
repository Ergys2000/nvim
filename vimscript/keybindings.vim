" Move the between splits
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize splits
nnoremap <C-UP> <C-w>+
nnoremap <C-DOWN> <C-w>-
nnoremap <C-RIGHT> <C-w>>
nnoremap <C-LEFT> <C-w><

" Toggle nerd tree
nnoremap <leader>t :NERDTreeToggle<CR>

" Fold a block of code
nnoremap <leader>zf $v%zf

" C style comment
nnoremap <leader>i a/*  */<Esc>2hi


" Move up/down editor lines
nnoremap j gj
nnoremap k gk

map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" tab mappings
nnoremap <leader><C-n> :tabnew<CR>

" Open and close goyo mode
nnoremap <leader>go :Goyo<CR>

" Open a terminal
nnoremap <leader><C-t> :below 10new<CR>:terminal<CR>a

function! LoadView()
  try
    execute 'loadview'
  catch
    echo "No saved view for this file"
  endtry
endfunction

" autocmd BufReadPost *.tsx call LoadView()
" autocmd BufReadPost *.js call LoadView()
" autocmd BufWinLeave *.tsx execute 'mkview'
" autocmd BufWinLeave *.js execute 'mkview'

" Map ctrl key to escape only for vim
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
