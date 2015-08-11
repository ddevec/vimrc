set nocompatible

"No bells!
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"view settings
syntax enable
set bg=dark
colorscheme ir_black
set nowrap
set number
set ruler
set scrolloff=4
set laststatus=2
"set langmap='q,\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?

"auto-formatting
set textwidth=80
set comments=sr:/*,mb:*,ex:*/
set formatoptions+=rnocq
set ff=unix

"editing
set bs=2
set foldmethod=marker

"backups
set backup
set backupdir=~/.vim/backup
set backupext=~
set directory=~/.vim/swp
set viewdir=~/.vim/view

silent execute '!mkdir -p ~/.vim/backup'
silent execute '!mkdir -p ~/.vim/swp'
silent execute '!mkdir -p ~/.vim/view'
au BufWinLeave * silent! mkview 
au BufWinEnter * silent! loadview

"indenting
set autoindent

"searching
set nohlsearch
set noincsearch
set ignorecase
set smartcase
set gdefault

"tabbing
set splitbelow
set expandtab
set tabstop=2
set shiftwidth=2

"misc
set encoding=utf-8
set noerrorbells
set wildignore=*.o,*.obj,*.bak,*.exe,*.bup,*.class
set showmode
set showcmd

"dictionary
set dictionary+=/usr/share/dict/words

"abbreviations
iab sop System.out.print
iab sol System.out.println
iab sep System.err.print
iab sel System.err.println
iab pritn print
iab ut   uint32_t
iab ut32 uint32_t
iab ut16 uint16_t
iab ut8  uint8_t
iab it32 int32_t
iab it16 int16_t
iab it8  int8_t
" working on it... iab tc:\([ a-zA-Z_.0-9()\[\]\"\'\r\n]\+\):\([a-zA-Z]\+\):\([a-zA-Z]\+\):\([ a-zA-Z_.0-9()\[\]\"\';]\+\) try\ {\ \1\ }\ catch(\2\ \3)\ {\ \4\ } 
iab #i #include
iab #d #define
iab laod load
iab teh the
iab tihs this
ca maek make
ca amek make
ca amke make
ca amk mak
ca mka mak

"language specific
let java_highlight_java_lang_ids=1
let java_highlight_java_io=1
let java_highlight_debug=1

autocmd FileType python let &makeprg='pylint % -i y -r n --rcfile=~/.vim/pylint.conf -f parseable'
autocmd FileType c let &makeprg='make'

"auto functions
autocmd BufRead,BufNewFile *.py setlocal expandtab tabstop=4 shiftwidth=4 foldmethod=indent foldnestmax=3 tw=120
autocmd BufRead,BufNewFile *.sql setlocal expandtab foldmethod=indent
autocmd BufRead,BufNewFile Makefile,makefile setlocal noexpandtab
autocmd BufRead,BufNewFile *.c,*.C,*.cpp,*.h,*.cc,*.cxx,*.hpp,*.hxx setlocal cindent
autocmd BufRead,BufNewFile *.java setlocal expandtab tabstop=4 shiftwidth=4 cindent
autocmd BufRead,BufNewFile *.tex setlocal autoindent textwidth=70 foldmethod=indent foldnestmax=4 complete-=k complete+=k
autocmd BufRead,BufNewFile *.s,*.as,*.asm,*.S setlocal expandtab

nnoremap Y y$
vnoremap jk <esc>
inoremap jk <esc>
inoremap <esc> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>
nmap ,v :tabnew ~/.vimrc<return>
nmap ,c :source ~/.vimrc<return>
nmap gp mp{v}gq`p
map <f5> :w<CR>:!gdb %<CR>
map <f8> :w<CR>:make<CR>:!gdb %<CR>
map <f6> :w<CR>:make<CR>:!./a.out
map <f7> :w<CR>:make<CR>:!./%<<CR>
map <S-h> gT
map <S-l> gt
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <space> i jkr
nmap ,d a/*{{{*/jk
nmap ,f a/*}}}*/jk
nmap ,D o/*{{{*/jk
nmap ,F o/*}}}*/jk
nmap ,s :w<CR>

vnoremap > >gv
vnoremap < <gv

