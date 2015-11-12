"command line mode with double space!"
let mapleader=" "
noremap <leader><space> :

inoremap jj <Esc>:
noremap ,l <Esc>:JSHint<CR>
nnoremap ,s :AutoSaveToggle<CR>

inoremap $$ [].slice.call(arguments)

inoremap << <leader>{<CR>}<Up><End><Cr>

inoremap <forin <Esc>^"tc$for (var k in <Esc>"tpa) if (<Esc>"tpa.hasOwnProperty(k)) {<CR>}<Up><End><Cr>
inoremap <foreach <Esc>^"tc$for (var i = 0; i < <Esc>"tpa.length; i++) {<Cr>}<Up><End><Cr>
inoremap <if <Esc>^"tc$if (typeof <Esc>"tpa !== 'undefined') {<Cr>}<Up><End><Cr>
inoremap <require <Esc>^"tc$var <Esc>"tpa = require('<Esc>"tpa')



inoremap <func function () {}<Esc>T(i

" navigation
nnoremap ,h <esc>:tabprev<cr>
nnoremap ,l <esc>:tabnext<cr>
