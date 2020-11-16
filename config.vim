" Tamanho do tab
set ts=2
" Tamaho do espaço
set sw=1
" Quebra de linha
set nowrap
" Numeros das linhas
set number
" backup ativado
set backupcopy=yes
" Menu de autocompletar os comandos
set completeopt=noinsert,menu,preview,longest
" Confirmação ao sair
set confirm
" Coloração de Sintaxe
syntax on

" Fold
set omnifunc=syntaxcomplete#Complete
set foldmethod=syntax
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened
