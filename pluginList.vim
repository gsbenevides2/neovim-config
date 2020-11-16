call plug#begin(stdpath('data') .'/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'skywind3000/vim-quickui'
Plug 'vim-airline/vim-airline'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
