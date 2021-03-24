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
 let opts = {'w':60, 'h':10, 'title':'Shell Bash'}
 call quickui#terminal#open('bash', opts)
endfunction
"Abrir terminal Node JS
function! OpenNode()
 let opts = {'w':60, 'h':10, 'title':'Node JS'}
 call quickui#terminal#open('node', opts)
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
