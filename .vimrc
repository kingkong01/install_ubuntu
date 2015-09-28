
set hlsearch            "高亮度反白
set backspace=2         "可隨時用倒退鍵刪除
set autoindent          "自動縮排
set ruler               "可顯示最後一行的狀態
set showmode            "左下角那一行的狀態
set nu                  "可以在每一行的最前面顯示行號啦！
set bg=dark             "顯示不同的底色色調
set ignorecase		    "忽略大小寫 
syntax on               "進行語法檢驗，顏色顯示。
"set clipboard=unnamedplus


map <F7> :if exists("syntax_on") <BAR>
\ syntax off <BAR><CR>
\ else <BAR>
\ syntax enable <BAR>
\ endif <CR>


map <F5> <Esc>:set nu<CR>
map <C-F5> <Esc>:set nonu<CR>


map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


set cscopequickfix=s-,c-,d-,i-,t-,e-
set nocp
nmap qw :set mouse =a<CR>
nmap as :set mouse =<CR>
set mouse=n
set expandtab
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set tabstop=4
map <F2> :set hls! set hls? <CR>
set pastetoggle=<F9>   "可以直接在vim貼上


nmap <C-I> <C-W>j:call g:SrcExpl_Jump()<CR> 
nmap <C-O> :call g:SrcExpl_GoBack()<CR>

" // The switch of the Source Explorer                                         " 
 nmap <F8> :SrcExplToggle<CR> 
"                                                                              " 
" // Set the height of Source Explorer window                                  " 
 let g:SrcExpl_winHeight = 8 
"                                                                              " 
" // Set 100 ms for refreshing the Source Explorer                             " 
 let g:SrcExpl_refreshTime = 100 
"                                                                              " 
" // Set "Enter" key to jump into the exact definition context                 " 
 let g:SrcExpl_jumpKey = "<ENTER>" 
"                                                                              " 
" // Set "Space" key for back from the definition context                      " 
 let g:SrcExpl_gobackKey = "<SPACE>" 
"                                                                              " 
" // In order to avoid conflicts, the Source Explorer should know what plugins " 
" // except itself are using buffers. And you need add their buffer names into " 
" // below listaccording to the command ":buffers!"                            " 
 let g:SrcExpl_pluginList = [ 
         \ "__Tag_List__", 
         \ "_NERD_tree_",
         \ "Source_Explorer",
         \ "-MiniBufExplorer-" 
     \ ] 
"                                                                              " 
" // Enable/Disable the local definition searching, and note that this is not  " 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. " 
" // It only searches for a match with the keyword according to command 'gd'   " 
 let g:SrcExpl_searchLocalDef = 1 
"                                                                              " 
" // Do not let the Source Explorer update the tags file when opening          " 
 let g:SrcExpl_isUpdateTags = 0 
"                                                                              " 
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to " 
" //  create/update a tags file                                                " 
 let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 
"                                                                              " 
" // Set "<F11>" key for updating the tags file artificially                   " 
 let g:SrcExpl_updateTagsKey = "<F6>" 
"                                                                              " 
" // Set "<F3>" key for displaying the previous definition in the jump list    " 
let g:SrcExpl_prevDefKey = "<F3>" 
"                                                                              " 
" // Set "<F4>" key for displaying the next definition in the jump list        " 
let g:SrcExpl_nextDefKey = "<F4>" 


" Open and close all the three plugins on the same time
nmap <C-F7> :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <C-F9> :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <C-F10> :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <C-F11> :TrinityToggleNERDTree<CR>


set clipboard=unnamed
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
let g:ctrlp_working_path_mode = 'ra'
set runtimepath^=~/.vim/bundle/ctrlp.vim


