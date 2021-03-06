"NeoBundle 'sjl/badwolf'

"" Plugins " {{{
"" Ack {{{
"nnoremap <leader>a :Ack!<space>
"let g:ackprg = 'ag --nogroup --nocolor --column'
"" }}}
"
"" Commentary {{{
"nmap <leader>c <Plug>CommentaryLine
"xmap <leader>c <Plug>Commentary
"
"augroup plugin_commentary
"  au!
"  au FileType sh setlocal commentstring=#\ %s
"augroup END
"" }}}
"
"" Ctrl-P {{{
"let g:ctrlp_dont_split = 'NERD_tree_2'
"let g:ctrlp_jump_to_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_match_window_reversed = 1
"let g:ctrlp_split_window = 0
"let g:ctrlp_max_height = 20
"let g:ctrlp_extensions = ['tag']
"
"let g:ctrlp_map = '<leader>,'
"nnoremap <leader>. :CtrlPTag<cr>
"
"let g:ctrlp_prompt_mappings = {
"  \ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<s-tab>'],
"  \ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<tab>'],
"  \ 'PrtHistory(-1)':       ['<c-n>'],
"  \ 'PrtHistory(1)':        ['<c-p>'],
"  \ 'ToggleFocus()':        ['<c-tab>'],
"  \ }
"
"let ctrlp_filter_greps = "".
"  \ "egrep -iv '\\.(" .
"  \ "jar|class|swp|swo|log|so|o|pyc|jpe?g|png|gif|mo|po" .
"  \ ")$' | " .
"  \ "egrep -v '^(\\./)?(" .
"  \ "deploy/|lib/|classes/|libs/|deploy/vendor/|.git/|.hg/|.svn/|.*migrations/|docs/build/" .
"  \ ")'"
"
"let my_ctrlp_user_command = "" .
"  \ "find %s '(' -type f -or -type l ')' -maxdepth 15 -not -path '*/\\.*/*' | " .
"  \ ctrlp_filter_greps
"
"let my_ctrlp_git_command = "" .
"  \ "cd %s && git ls-files --exclude-standard -co | " .
"  \ ctrlp_filter_greps
"
"let my_ctrlp_ffind_command = "ffind --semi-restricted --dir %s --type e -B -f"
"
"let g:ctrlp_user_command = ['.git/', my_ctrlp_ffind_command, my_ctrlp_ffind_command]
"" }}}
"
"" Fugitive {{{
"nnoremap <leader>gd :Gdiff<cr>
"nnoremap <leader>gs :Gstatus<cr>
"nnoremap <leader>gw :Gwrite<cr>
"nnoremap <leader>ga :Gadd<cr>
"nnoremap <leader>gb :Gblame<cr>
"nnoremap <leader>gco :Gcheckout<cr>
"nnoremap <leader>gci :Gcommit<cr>
"nnoremap <leader>gm :Gmove<cr>
"nnoremap <leader>gr :Gremove<cr>
"nnoremap <leader>gl :Shell git gl -18<cr>:wincmd \|<cr>
"
"augroup ft_fugitive
"  au!
"  au BufNewFile,BufRead .git/index setlocal nolist
"augroup END
"
"" "Hub"
"nnoremap <leader>H :Gbrowse<cr>
"vnoremap <leader>H :Gbrowse<cr>
"" }}}
"
"" Gundo {{{
"nnoremap <F5> :GundoToggle<CR>
"
"let g:gundo_debug = 1
"let g:gundo_preview_bottom = 1
"let g:gundo_tree_statusline = "Gundo"
"let g:gundo_preview_statusline = "Gundo Preview"
"" }}}
"
"" HTML5 {{{
"let g:event_handler_attributes_complete = 0
"let g:rdfa_attributes_complete = 0
"let g:microdata_attributes_complete = 0
"let g:atia_attributes_complete = 0
"" }}}
"
"" Linediff {{{
"vnoremap <leader>l :Linediff<cr>
"nnoremap <leader>L :LinediffReset<cr>
"" }}}
"
"" NERD Tree {{{
"noremap  <F2> :NERDTreeToggle<cr>
"inoremap <F2> <esc>:NERDTreeToggle<cr>
"
"augroup ps_nerdtree
"  au!
"  au Filetype nerdtree setlocal nolist
"  " au Filetype nerdtree nnoremap <buffer> K :q<cr>
"augroup END
"
"let NERDTreeHighlightCursorline = 1
"let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
"                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
"                    \ '.*\.o$', 'db.db', 'tags.bak']
"
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"let NERDChristmasTree = 1
"let NERDTreeChDirMode = 2
"let NERDTreeMapJumpFirstChild = 'gK'
"" }}}
"
"" Powerline {{{
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_cache_enabled = 1
"let g:Powerline_stl_path_style = 'short'
"let g:Powerline_colorscheme = 'badwolf'
"let g:Powerline_dividers_override = ['→', '>', '←', '<']
"" }}}
"
"" SLIMV {{{
"let g:slimv_leader = '\'
"let g:slimv_keybindings = 2
"let g:slimv_repl_name = 'SLIMV.REPL'
"let g:slimv_repl_split = 4
"" let g:slimv_repl_syntax = 0
"let g:slimv_repl_wrap = 0
"let g:slimv_preferred = 'clisp'
"let g:paredit_smartjump = 1
"
"" Use a swank command that works, and doesn't require new app windows.
"let g:slimv_swank_clojure = '!dtach -n /tmp/dtach-swank.sock -r winch lein ritz 4005'
"" let g:slimv_swank_clojure = '! xterm -e lein ritz 4005 &'
"let g:slimv_swank_clojure = '!false'
"" }}}}
"
"" Supertab {{{
"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:SuperTabLongestHighlight = 1
"let g:SuperTabCrMapping = 1
""}}}
"
"" Syntastic {{{
"let g:syntastic_enable_signs = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_disabled_filetypes = ['html', 'rst']
"let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}]'
""let g:syntastic_jsl_conf = '$HOME/.vim/jsl.conf'
"" }}}
"
"" tslime {{{
"let g:tslime_ensure_trailing_newlines = 1
"let g:tslime_normal_mapping = '<localleader>t'
"let g:tslime_visual_mapping = '<localleader>t'
"let g:tslime_vars_mapping = '<localleader>T'
"" }}}
"
"" YankRing {{{
"function! YRRunAfterMaps()
"  " Make Y yank to end of line.
"  nnoremap Y :<C-U>YRYankCount 'y$'<CR>
"
"  " Fix L and H in operator-pending mode, so yH and such works.
"  omap <expr> L YRMapsExpression("", "$")
"  omap <expr> H YRMapsExpression("", "^")
"
"  " Don't clobber the yank register when pasting over text in visual mode.
"  vnoremap p :<c-u>YRPaste 'p', 'v'<cr>gv:YRYankRange 'v'<cr>
"endfunction
"" }}}
"
"" Surround {{{
"let g:surround_{char2nr("t")} = "<\1\r..*\r&\1>\r\1\r..*\r&\1>"
"" }}}
"
"" Git Gutter {{{
"let g:gitgutter_enabled = 0
"" }}}
