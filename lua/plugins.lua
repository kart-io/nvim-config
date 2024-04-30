-- 在 Neovim 的 init.lua 配置文件中
-- 向 runtimepath 添加 Vundle 的路径
vim.opt.runtimepath:append("~/.vim/bundle/Vundle.vim")

-- 使用 vim.fn 来调用 vundle#begin()
vim.fn['vundle#begin']()
-- 使用 vim.fn 来调用 vundle#begin() 并传递一个参数
-- vim.fn['vundle#begin']('~/.vim/bundle')

-- 添加 vundle 插件本身
vim.cmd [[Plugin 'vundlevim/vundle.vim' ]]

-- 添加 vim-go 插件，并指定安装后执行 :GoUpdateBinaries
-- 注意这里使用了 vim.cmd 来嵌入 VimScript 代码
vim.cmd [[Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }]]


-- 添加 fzf 插件，并指定安装目录和安装后执行的命令
-- 注意这里使用了 vim.cmd 来嵌入 VimScript 代码
vim.cmd [[Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }]]

vim.cmd [[Plugin 'junegunn/fzf.vim' ]]
vim.cmd [[Plugin 'preservim/nerdtree' ]]
vim.cmd [[Plugin 'vim-airline/vim-airline' ]]
vim.cmd [[Plugin 'kshenoy/vim-signature' ]]
vim.cmd [[Plugin 'airblade/vim-rooter' ]]

vim.cmd [[Plugin 'morhetz/gruvbox' ]]


-- 结束 Vundle 的配置
vim.fn['vundle#end']()


require("plugins.nerdtree").config()
require("plugins.golang").config()
