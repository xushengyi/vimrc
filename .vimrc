colorscheme slate

set nocompatible
set nu
filetype on
filetype indent on
filetype plugin on
set history=1000
set background=dark
syntax on
set autoindent
set smartindent
set tabstop=2  
set expandtab    
set shiftwidth=4
set showmatch
set guioptions-=T
set ruler
set mouse=a
set cindent
set incsearch
set splitbelow
set autoread
""set hls
set helplang=cn
"set foldmethod=syntax
set ignorecase
"set dictionary=/usr/share/dict/words

"" set current work dir
:cd ~/work/prj

set wildignore+=env/**,bin/**,*.class,*.jar,*.dll,*.rar,*.jpg,*.gif,*.png,*.zip

 "Set mapleader
 let mapleader = ","

 "Fast reloading of the .vimrc
 map <silent> <leader>ss :source ~/.vimrc<cr>
 "Fast editing of .vimrc
 map <silent> <leader>ee :e ~/.vimrc<cr>
 "When .vimrc is edited, reload it
 "autocmd! bufwritepost .vimrc source ~/.vimrc 

 "pathogen
 call pathogen#infect()

"""""""""""""""""""""""""""""
" mapping
"""""""""""""""""""""""""""""
nmap <F8> :TlistToggle<CR>
nmap tl :TlistToggle<CR>
"nmap wm :WMToggle<cr>
nmap <F7> :NERDTree<CR>
nmap nt :NERDTreeToggle<CR>
nmap <F6> :CommandT<CR>
nmap ct :CommandT<CR>
nmap cl :close<CR>
nmap bd :bdelete<CR>

""mapping Command+T
""if has("gui_macvim")
	""macmenu &File.New\ Tab key=<nop>
	map <D-t> :CommandT<CR>
""endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <F3> <C-]>
map <F4> <C-O>

:imap <s-Tab> <C-P>
"设置程序的运行和调试的快捷键F5和Ctrl-F5

"ctags file
"set tags=~/dev/tags,~/dev/MetaCRM6/tags
"autocmd FileType java set tags=~/dev/tags,~/dev/MetaCRM6/tags


set tags=~/dev/9pkaiapp/tags
autocmd FileType java set tags=~/dev/9kaiapp/tags
autocmd FileType js set tags=~/dev/9kaiapp/tags
autocmd FileType jsp set tags=~/dev/9kaiapp/tags


"for script like ruby
set autowrite
set makeprg=ruby\ %
"set makeprg=gcc\ -o\ %<\ %
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

"" debugger
let g:ruby_debugger_progname = 'mvim'
let g:ruby_debugger_default_script = 'rails server'

"compiler ant
"setlocal makeprg=ant\ -find\ build.xml 
"setlocal makeprg=ant\ -find\ build.xml 
"autocmd FileType java set makeprg=antbuild.sh


 "powerline{
 "set guifont=PowerlineSymbols\ for\ Powerline
 "set nocompatible
 set t_Co=256
 "let g:Powerline_symbols = 'normal'
 let g:Powerline_symbols = 'fancy'
 "}

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 

" CommandT
let g:CommandTMaxHeight = 20

"netrw
let g:netrw_hide=1
let g:netrw_list_hide='^\..*,^\.svn,.*\.swp$'
let g:netrw_liststyle=3

"miniBuffer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
"let g:miniBufExplForceSyntaxEnable = 1

"set font to Monaco 18pt
"set gfn=Menlo:h18
	set gfn=Monaco:h16
	set shell=/bin/bash

if has("gui_running")
	set guioptions-=T
	set t_Co=256
	set background=dark
	colorscheme railscasts2
	"set nonu
else
	colorscheme slate 
	set background=dark
	"set nonu
 endif

set encoding=utf-8

"internationalization
"if has("multi_byte")
	set termencoding=utf-8
	set encoding=utf-8
	set fileencodings=utf-8,ucs-bom,chinese

	language messages zh_CN.utf-8
"endif



"color
hi VertSplit guibg=#31312D guifg=#526A83 ctermfg=White ctermbg=Black term=none cterm=none gui=none
hi StatusLine guibg=#616161 guifg=#ee0000 ctermfg=White ctermbg=red term=none cterm=none gui=none
"hi StatusLine guibg=#31312D guifg=#126A83 ctermfg=White ctermbg=Black term=none cterm=none gui=none
hi StatusLineNC guibg=#616161 guifg=#52AA84 ctermfg=White ctermbg=Black term=none cterm=none gui=none
hi FoldColumn guibg=#31312D guifg=#526A83 ctermfg=White ctermbg=Black term=none cterm=none gui=none 
hi LineNr guibg=#31312D guifg=#526A83 ctermfg=White ctermbg=Black term=none cterm=none gui=none 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile	

"""""""""""""""""""""""""""""
" javacomplete
"""""""""""""""""""""""""""""
autocmd Filetype java set omnifunc=javacomplete#Complete         
autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
""autocmd Filetype java,javascript,jsp inoremap <buffer>  .  .<C-X><C-O><C-P>
autocmd Filetype java,javascript,jsp inoremap <buffer> <C-S-Space> <C-X><C-O><C-P>


" Platform
function! MySys()
  if has("win32")
    return "windows"
  else
		return "linux"
  endif
endfunction

:inoremap jj <ESC>
:inoremap uu <ESC> o

"括号等的自动完成
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap < <><ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

function! ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
     return "\<Right>"
 else
     return a:char
 endif
endfunction
