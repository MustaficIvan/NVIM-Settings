call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    "Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'vim-vdebug/vdebug'
    Plug 'neovim/nvim-lspconfig'
    "Plug 'jaxbot/semantic-highlight.vim'
    Plug 'overcache/NeoSolarized'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()
