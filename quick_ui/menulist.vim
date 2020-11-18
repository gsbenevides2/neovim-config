let menu_list_contents = [
	\ ["Go to &Definition\tgd", 'exec "normal \<Plug>(coc-definition)"'],
	\ ["Go to &Type Definition\tgy", 'exec "normal \<Plug>(coc-type-definition)"'],
	\ ["Go to &Implementatation\tgi", 'exec "normal \<Plug>(coc-implementation)"'],
	\ ["Go to &Reference\tgr", 'exec "normal \<Plug>(coc-references)"'],
	\ ['-'],
	\ ["&Show Documentation\tK", "call CocActionAsync('doHover')"],
	\ ['-'],
	\ ["Ren&ame Symbom\trn", 'exec "normal \<Plug>(coc-codeaction)"'],
  \ ]
let menu_list_options = {'index':g:quickui#context#cursor}
nnoremap <silent> m :call quickui#context#open(menu_list_contents, menu_list_options)<CR>
