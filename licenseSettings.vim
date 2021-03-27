function! ShowLicenses()
 call inputsave()
 let g:licenses_copyright_holders_name = input('Copyright:')
 call inputrestore()
 let content = [
		\ ['GNU Affero', 'Affero'],
		\ ['GNU All-Permissive', 'Allpermissive'],
		\ ['Apache 2.0', 'Apache'],
		\ ['Boost Software 1.0', 'Boost'],
		\ ['BSD 2-Clause FreeBSD', 'Bsd2'],
		\ ['BSD 3-Clause Modified BSD', 'Bsd3'],
		\ ['Creative Commons Zero', 'Cc0'],
		\ ['Creative Commons Attribution 4.0 International', 'Ccby'],
		\ ['Creative Commons Attribution-ShareAlike 4.0 International', 'Ccbysa'],
		\ ['CeCILL', 'Cecill'],
		\ ['Eclipse Public', 'Epl'],
		\ ['GNU Free Documentation (FDL)', 'Gfdl'],
		\ ['GNU General Public (GPL) 3', 'Gpl'],
		\ ['GNU General Public (GPL) 2', 'Gplv2'],
		\ ['ISC', 'Isc'],
		\ ['MIT', 'Mit'],
		\ ['MIT/Apache 2', 'Mitapache'],
		\ ['Mozilla Public License 2', 'Mpl'],
		\ ['University of Illinois/NCSA', 'Uiuc'],
		\ ['Unlicense', 'Unlicense'],
		\ ['GNU Verbatim Copying', 'Verbatim'],
		\ ['What The Fuck You Want To Public', 'Wtfpl'],
		\ ['Zlib', 'Zlib']
		\]
 let options = {'title':'Choose:'}
 call quickui#listbox#open(content,options)
endfunc
