let g:floaterm_autoclose=1

nnoremap <silent><LEADER>tn :FloatermNew<CR>
"tnoremap <silent><F12> <c-\><c-n>:FloatermHide<CR>
tnoremap <silent><LEADER>th <c-\><c-n>:FloatermHide<CR>
"noremap <silent><LEADER>ftt :FloatermToggle<CR>
"noremap <silent><LEADER>ftr :FloatermSend getline('.')<CR>

autocmd VimLeavePre * :FloatermKill!
