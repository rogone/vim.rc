"lightline
let g:lightline = {
  \   'colorscheme': 'Dracula',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': ''
  \}

let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
  \ }

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
