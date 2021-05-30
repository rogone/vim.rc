" vim-go
" use goimports for formatting
let g:go_fmt_command = "gofmt"
let g:go_def_mode= "gopls"
let g:go_info_mode="gopls"
let g:go_guru_scope = ["..."]
let g:go_auto_type_info = 1
let g:go_gocode_unimported_packages = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
" Open go doc in vertical window, horizontal, or tab
au Filetype go nnoremap <Leader>sp <Plug>(go-def-split)
au Filetype go nnoremap <Leader>vt <Plug>(go-def-vertical)
au Filetype go nnoremap <Leader>tb <Plug>(go-def-tab)
au Filetype go nnoremap <Leader>, <c-x><c-o>

