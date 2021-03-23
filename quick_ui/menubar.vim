source $HOME/.config/nvim/quick_ui/utils.vim
" Limpa todos os menus
call quickui#menu#reset()

" Adiciona o menu 'File'
call quickui#menu#install('&File',[
			\ ["&New File\t:tabnew", 'tabnew'],
			\ ["&Open\tNERDTreeToogle", 'NERDTreeToggle'],
			\ ["&Save\t:w", 'w'],
			\ ["Save All\t:wa", 'wa'],
			\ ["&Close\t:q", 'q'],
			\ ["Close All\t:qa", 'qa'],
			\ ])

" Adiciona o menu 'Editor'
call quickui#menu#install('&Editor',[
	 \ ["Relative &Number\t%{&relativenumber? 'On':'Off'}", 'call ToggleRelativeNumber()'],
	 \ ["&Fold Reset", 'call FoldReset()'],
	 \ ["Find and &Replace", 'call FindAndReplace()'],
	 \ ["&Wrap\t%{&wrap? 'On':'Off'}", 'call ToggleWrap()'],
	 \ ])

" Adiciona o menu 'Plugins'
call quickui#menu#install('&Plugins',[
			\ ["&Install\t:PlugInstall",'PlugInstall'],
			\ ["&Status\t:PlugStatus",'PlugStatus'],
			\ ["&Clean\t:PlugClean",'PlugClean'],
			\ ["&Update\t:PlugUpdate",'PlugUpdate'],
			\ ["Up&grade\t:PlugUpgrade",'PlugUpgrade'],
			\ ])

" Adiciona o menu 'Terminal'
call quickui#menu#install('&Terminal',[
	 \ ["&Shell", 'call OpenShell()'],
	 \ ["&Node", 'call OpenNode()'],
	 \ ])

" Adiciona o menu 'About'
call quickui#menu#install('&About',[
	 \ ["&Help\t:help",'help'],
	 \ ])
" Clique duas vezes em espaço para abrir a barra de menus
noremap <space><space> :call quickui#menu#open()<cr>
