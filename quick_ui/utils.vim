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
 tabnew
 terminal zsh
endfunction
"Abrir terminal Node JS
function! OpenNode()
 tabnew
 terminal node
endfunction
"Reserta o siatema de fold
function! FoldReset()
 set foldmethod=manual
 set foldmethod=syntax
endfunction
"Procura e substitui palavras
function! FindAndReplace()
 call inputsave()
 let find = input('Find: ')
 call inputrestore()
 call inputsave()
 let replace = input('Replace: ')
 call inputrestore()
 let numberOfLines = line('$')
 let actualLine = 1
 while actualLine <= numberOfLines
  call setline(actualLine, substitute(getline(actualLine), find, replace, 'g'))
  let actualLine = actualLine +1
 endwhile
 echo '\n Finished'
endfunc
