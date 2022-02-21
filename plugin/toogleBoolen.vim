if exists('g:default_toogle_map_key_user')
	let g:default_toogle_map_key = g:default_toogle_map_key_user	
else
	let g:default_toogle_map_key = "<leader>t"
endif

""" Function to toogle boolen.
function! ToogleTrue()
	let g:cw = expand("<cword>")
	" let cmdTrue = "\<c-r>='false'\<cr>"
	" let cmdFalse = "\<c-r>='true'\<cr>"
	if g:cw ==? "true"
			execute 'normal! diwi'."\<c-r>='false'\<cr>"
	elseif g:cw ==? "false"
			execute 'normal! diwi'."\<c-r>='true'\<cr>"
	elseif g:cw ==? "=="
			execute 'normal! diwi'."\<c-r>='!='\<cr>"
	elseif g:cw ==? "!="
			execute 'normal! diwi'."\<c-r>='=='\<cr>"
	else
			echo "Not a Boolean Type."
	endif
endfunction

""" Setting the command for easy refrence.
command! -nargs=0 BooleanToogle :call ToogleTrue()

""" Default key maping.
execute 'nnoremap '.g:default_toogle_map_key.' :BooleanToogle <cr>'
execute 'inoremap '.g:default_toogle_map_key.' <c-o>:BooleanToogle <cr>'
