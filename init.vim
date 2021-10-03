call plug#begin('~/.vim/plugged')

" Color schemes
Plug 'lifepillar/vim-gruvbox8'
Plug 'tomasiser/vim-code-dark'
Plug 'christianchiarulli/nvcode-color-schemes.vim'

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

" Java lsp server configuration
Plug 'mfussenegger/nvim-jdtls'

call plug#end()

source ~/.config/nvim/vimscript/general.vim
source ~/.config/nvim/vimscript/keybindings.vim

source ~/.config/nvim/vimscript/limelight-config.vim

source ~/.config/nvim/vimscript/ultisnips-config.vim

" Language server client config and auto completion config
luafile ~/.config/nvim/lua/lsp-config.lua
source ~/.config/nvim/vimscript/completion-nvim.vim

" Vimwiki and text folding config
source ~/.config/nvim/vimscript/vimwiki-config.vim
source ~/.config/nvim/vimscript/fold-config.vim

" Treesitter config
luafile ~/.config/nvim/lua/treesitter-config.lua

" Telescope fuzzy finder config
source ~/.config/nvim/vimscript/telescope-config.vim

" Java language server configuration
source ~/.config/nvim/vimscript/jdtls-config.vim


