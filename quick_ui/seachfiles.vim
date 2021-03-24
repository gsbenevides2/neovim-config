function! FileSearch()
 call inputsave()
 let text = input('Text Content: ')
 call inputrestore()
 call inputsave()
 let folder = input('Directory: ')
 call inputrestore()
 let command = 'grep -iRl "'.text.'" '.folder
 let result = system(command)
 echo '\n'
 if strlen(result) == 0
	echo 'No files found.'
 else
	let position = 0
	let items = []
	let lines = split(result, '\n')
	while position < len(lines)
	 let file = lines[position]
	 let line = [file, 'tabnew '.file]
	 let items = add(items, line)
	 let position = position + 1
	endwhile
	let options = {'title':'Open in new tab'}
	call quickui#listbox#open(items, options)
 endif
endfunc
