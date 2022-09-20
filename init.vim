set number

source $HOME\AppData\Local\nvim\vim-plug\plugins.vim

"Theme
"set termguicolors
syntax enable
colorscheme NeoSolarized
set background=dark
let g:neosolarized_termtrans = 1
source $HOME\AppData\Local\nvim\plug-config\neo.vim

"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

"KeyMaps
map ü :NERDTreeToggle  <enter>
map <A-ß> :vertical resize -5 <enter>
map <A-0> :vertical resize +5 <enter>
map <A--> :resize -5 <enter>
map <A-+> :resize +5 <enter>
map <C-s> :w <enter>
map <A-1> :%s/foo/bar/g

let g:python3_host_prog = expand('C:\Users\ivanm\AppData\Local\Microsoft\WindowsApps\python3.10.exe')

"Lua
lua << END
require('lualine').setup()
END

"use powetshell in nvim
set shell=powershell.exe
set shellxquote=
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
let &shellquote   = ''
let &shellpipe    = '| Out-File -Encoding UTF8 %s'
let &shellredir   = '| Out-File -Encoding UTF8 %s'
