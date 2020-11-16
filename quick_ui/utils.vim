" Alternar o relative number
function! ToggleRelativeNumber()
 if &relativenumber
	set nornu
 else
	set rnu
 endif
endfunction

"Alterna a quebra de linha
function! ToggleWrap()
 if &wrap
	set nowrap
 else
	set wrap
 endif
endfunction

"Abrir terminal shell
function! OpenShell()
 let opts = {'w':60, 'h':10, 'title':'Shell ZSH'}
 call quickui#terminal#open('zsh', opts)
endfunction
"Abrir terminal Node JS
function! OpenNode()
 let opts = {'w':60, 'h':10, 'title':'Node JS'}
 call quickui#terminal#open('node', opts)
endfunction
