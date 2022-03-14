set title     "編集中のファイル名を表示
set showmatch "対応する括弧を表示
set sh=zsh

"colorscheme koehler
"set background=dark
set cursorline

" #####タブ設定####
"set list listchars=tab:\>\-
set title     "編集中のファイル名を表示
set showmatch "対応する括弧を表示

"colorscheme koehler
"set background=dark
set cursorline

" #####タブ設定####
"set list listchars=tab:\>\-
set tabstop=4
set shiftwidth=4
" 色 
"hi NonText guibg=NONE guifg=DarkGreen
"hi SpecialKey guibg=NONE guifg=Gray50
"hi SpecialKey term=none cterm=none ctermfg=59 gui=none guifg=snow3

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase  "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan   "検索時に最後まで行ったら最初に戻る
set hlsearch   "highlight search word

"ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

set autoindent "開業時に前の行にインデントを合わせる
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー


let mapleader = "\<space>"

if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

" Undo永続化
if has("persistent_undo")
    set undodir=~/.vim
    set undofile
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
