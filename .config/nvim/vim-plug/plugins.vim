call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'dracula/vim', { 'as': 'dracula' } " Dracula Theme
    Plug 'https://github.com/preservim/nerdtree' " NerdTree
    Plug 'https://github.com/vim-airline/vim-airline' " Status bar
    Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
    Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
    Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

    "Plug 'hrsh7th/nvim-cmp'

    set encoding=UTF-8

call plug#end()
