"source  $MYVIMRC/basic.vim
" 执行 basic.vim 文件
:execute 'source' fnamemodify($MYVIMRC, ':h') . '/basic.vim'


lua require('plugins')
lua require('keymaps')

" 设置颜色数量
set t_Co=256
" 使用gruvbox配色方案
colorscheme gruvbox
" 设置背景为暗色
set background=dark
