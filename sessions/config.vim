let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit ~/.config/nvim/lua/core/keymaps.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 32 + 96) / 192)
exe 'vert 2resize ' . ((&columns * 79 + 96) / 192)
exe 'vert 3resize ' . ((&columns * 79 + 96) / 192)
argglobal
enew
file NvimTree_1
balt ~/.config/nvim/lua/packer_init.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
balt term://~/.config/nvim//250093:/bin/bash
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 12 - ((11 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
wincmd w
argglobal
if bufexists("~/.config/nvim/lua/packer_init.lua") | buffer ~/.config/nvim/lua/packer_init.lua | else | edit ~/.config/nvim/lua/packer_init.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/lua/packer_init.lua
endif
balt ~/.config/nvim/lua/core/keymaps.lua
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 24 - ((23 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 029|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 32 + 96) / 192)
exe 'vert 2resize ' . ((&columns * 79 + 96) / 192)
exe 'vert 3resize ' . ((&columns * 79 + 96) / 192)
tabnext 1
badd +31 ~/.config/nvim/lua/packer_init.lua
badd +26 ~/.config/nvim/lua/core/keymaps.lua
badd +2 term://~/.config/nvim//250093:/bin/bash
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=lTOInioFftxs
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
