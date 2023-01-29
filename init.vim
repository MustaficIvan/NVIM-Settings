set number
set guicursor=
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
map <F5> :!%:p <enter>
map <F8> :w <enter> :!python %:p <enter>
inoremap <expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"

let g:python3_host_prog = expand('C:\Users\ivanm\AppData\Local\Microsoft\WindowsApps\python3.10.exe')

"Lua
lua << END
require('lualine').setup{
  options = { theme = 'solarized_dark' }
}
require'lspconfig'.pyright.setup{}
require 'nvim-treesitter.install'.compilers = {'zig'}
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
END

set shell=pwsh.exe
set shellxquote=
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
let &shellquote   = ''
let &shellpipe    = '| Out-File -Encoding UTF8 %s'
let &shellredir   = '| Out-File -Encoding UTF8 %s'
