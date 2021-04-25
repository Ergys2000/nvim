call plug#begin('~/.vim/plugged')

" Color schemes
Plug 'lifepillar/vim-gruvbox8'
Plug 'tomasiser/vim-code-dark'
Plug 'christianchiarulli/nvcode-color-schemes.vim'

" File fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Focused note taking
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" Language Servers
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Note taking
Plug 'vimwiki/vimwiki'

" Directory explorer
Plug 'preservim/nerdtree'

" Status line
Plug 'itchyny/lightline.vim'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-treesitter/playground'

" Telescope fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Start up page for vim
Plug 'mhinz/vim-startify'

" Git wrapper for vim
Plug 'tpope/vim-fugitive'

" Ultisnips snippet engine
Plug 'SirVer/ultisnips'
" Snippets for ultisnips
Plug 'honza/vim-snippets'

call plug#end()

source ~/.config/nvim/general.vim
source ~/.config/nvim/keybindings.vim

source ~/.config/nvim/limelight-config.vim

source ~/.config/nvim/ultisnips-config.vim

luafile ~/.config/nvim/lsp-config.lua
source ~/.config/nvim/completion-nvim.vim

source ~/.config/nvim/vimwiki-config.vim
source ~/.config/nvim/fold-config.vim

luafile ~/.config/nvim/treesitter-config.lua

source ~/.config/nvim/telescope-config.vim
