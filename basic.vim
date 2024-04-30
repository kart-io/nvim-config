" 不兼容模式
set nocompatible              " be iMproved, required
" 关闭文件类型检测
filetype off                  " required

"显示行数
set number

" 打开语法高亮
syntax on

" common configure
set noswapfile
set mouse=a " 激活鼠标使用
set wrap " 自动换行
set showmatch " 显示括号匹配
set sw=4 " 设置软宽度
set tabstop=4 " 设置Tab长度为 4 空格
set shiftwidth=2 " 设置自动缩进长度为2空格
set gdefault " 行内替换
set expandtab " 使用空格来替换 Tab
set autoindent " 继承前一行的缩进方式，适用于多行注释"
set autowrite " 自动保存
set nocompatible " 关闭 vi 兼容模式
set nonumber " 关闭行号显示
set visualbell  "禁止响铃"
set incsearch "边输入边搜索(实时搜索)")"
set hlsearch "开启搜索结果的高亮显示"
set confirm " 在处理未保存或只读文件时，弹出确认
set history=1000 " 设置历史记录步数
set backspace=indent,eol,start  " more powerful backspacing
"set pastetoggle=<F2> " 粘贴代码保留缩进
set autoread    "文件在Vim之外修改过，自动重新读入"
set autochdir
" 从不备份
" set nobackup
" set noswapfile
set foldcolumn=0 "关闭代码折叠线


