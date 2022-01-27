" add header comments for .h .c .hpp .cpp .mk .sh new file
" auto call SetTitle func
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh,*.py,*.go exec ":call SetTitle()"
 
" add comment for cpp
func SetComment_ch()
	call append(0,"/*================================================================")
	call append(1, "*   Copyright (C) ".strftime("%Y")." * Ltd. All rights reserved.")
	call append(2, "*   ")
	call append(3, "*   File name   : ".expand("%:t"))
	call append(4, "*   Author      : rogone")
	call append(5, "*   Email       : rogone@163.com")
	call append(6, "*   Created date: ".strftime("%F %T"))
	call append(7, "*   Description : ")
	call append(8, "*")
	call append(9, "*===============================================================*/")
	call append(10, "")
endfunc
" add comment for shell,Makefile
func SetComment_sh()
	call setline(3, "#================================================================")
	call setline(4, "#   Copyright (C) ".strftime("%Y")." * Ltd. All rights reserved.")
	call setline(5, "#   ")
	call setline(6, "#   File name   : ".expand("%:t"))
	call setline(7, "#   Author      : longbin")
	call setline(8, "#   Created date: ".strftime("%F %T"))
	call setline(9, "#   Description : ")
	call setline(10, "#")
	call setline(11, "#================================================================")
	call setline(12, "")
	call setline(13, "")
endfunc
 
" SetTitle func, add comment
func SetTitle()
	if &filetype == 'make'
		call setline(1,"")
		call setline(2,"")
		call SetComment_sh()
	elseif &filetype == 'sh'
		call setline(1,"#! /bin/bash")
		call setline(2,"")
		call SetComment_sh()
 
	elseif &filetype == 'python'
		call setline(1,"#! /usr/bin/env python")
		call setline(2,"# coding=utf-8")
		call setline(3,"")
		call SetComment_sh()
 
	else
		call SetComment_ch()
		if expand("%:e") == 'hpp'
			call append(line(".")+10, "#ifndef _".toupper(expand("%:t:r"))."_H")
			call append(line(".")+11, "#define _".toupper(expand("%:t:r"))."_H")
			call append(line(".")+12, "#ifdef __cplusplus")
			call append(line(".")+13, "extern \"C\"")
			call append(line(".")+14, "{")
			call append(line(".")+15, "#endif")
			call append(line(".")+16, "")
			call append(line(".")+17, "#ifdef __cplusplus")
			call append(line(".")+18, "}")
			call append(line(".")+19, "#endif")
			call append(line(".")+20, "#endif //".toupper(expand("%:t:r"))."_H")
 
		elseif expand("%:e") == 'h'
			call append(line(".")+10, "#pragma once")
 
		elseif &filetype == 'c'
			call append(line(".")+10,"#include \"".expand("%:t:r").".h\"")
 
		elseif &filetype == 'cpp'
			call append(line(".")+10, "#include \"".expand("%:t:r").".h\"")
		elseif &filetype == 'go'
			call setline(11, "package ".expand("%:p:h:t"))
		endif
	endif
endfunc
