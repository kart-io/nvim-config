-- lua 设置  nnoremap <SPACE> <Nop>  命令
vim.api.nvim_set_keymap('n', '<SPACE>', '<Nop>', {noremap = true, silent = true})

-- lua 设置 map <Space> <Leader>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- GoDef

-- 即使用 <2-LeftMouse>（通常代表鼠标中键或者是按下滚轮）来触发 :GoDef 命令
vim.api.nvim_set_keymap('n', '<2-LeftMouse>', ':GoDef<CR>', {silent = true, noremap = true})

-- lua 设置 map <RightMouse> :GoDefPop <cr>
-- vim.api.nvim_set_keymap 函数。这个函数允许你设置键盘和鼠标的映射
vim.api.nvim_set_keymap('n', '<RightMouse>', ':GoDefPop<CR>', {silent = true, noremap = true})

-- lua 设置 map <cr> :GoDef <cr>
vim.api.nvim_set_keymap('n', '<CR>', ':GoDef<CR>', {noremap = true, silent = true})

--lua 设置 nnoremap <C-I> :GoDefPop<CR>
vim.api.nvim_set_keymap('n', '<C-I>', ':GoDefPop<CR>', {noremap = true, silent = true})

--lua 设置 lua map <S-K> :GoDoc <cr>
vim.api.nvim_set_keymap('n', '<S-K>', ':GoDoc<CR>', {noremap = true, silent = true})

--lua 设置 lua map <S-L> :GoIfErr <cr>
vim.api.nvim_set_keymap('n', '<S-L>', ':GoIfErr<CR>', {noremap = true, silent = true})

--lua 设置 lua map <S-T> :GoDefType <cr> 用于跳转到类型定义
vim.api.nvim_set_keymap('n', '<S-T>', ':GoDefType<CR>', {noremap = true, silent = true})

--lua 设置 map <S-M> :GoInfo <cr> 用于显示当前光标下代码的类型信息。
vim.api.nvim_set_keymap('n', '<S-M>', ':GoInfo<CR>', {noremap = true, silent = true})

-- lua 设置 map <S-H> :GoSameIdsToggle <cr>  用于切换当前标识符的高亮显示
vim.api.nvim_set_keymap('n', '<S-H>', ':GoSameIdsToggle<CR>', {noremap = true, silent = true})

-- lua 设置 map <S-T> :GoAddTag<cr> 用于为 Go 结构体添加字段标签。
vim.api.nvim_set_keymap('n', '<S-T>', ':GoAddTag<CR>', {noremap = true, silent = true})

-- lua 设置 map <S-P> :GoImplements<cr> 用于显示当前接口的所有实现或当前结构体实现的所有接口
vim.api.nvim_set_keymap('n', '<S-P>', ':GoImplements<CR>', {noremap = true, silent = true})

-- lua 设置 map <S-R> :GoRename<cr>  用于重命名 Go 语言中的标识符
vim.api.nvim_set_keymap('n', '<S-R>', ':GoRename<CR>', {noremap = true, silent = true})

-- lua 设置 map <S-C> :GoCallers<cr> 用于查找当前函数的所有调用者
vim.api.nvim_set_keymap('n', '<S-C>', ':GoCallers<CR>', {noremap = true, silent = true})
-- lua 设置 map <S-F> :GoFillStruct<cr>  用于自动填充 Go 语言中的结构体字段。
vim.api.nvim_set_keymap('n', '<S-F>', ':GoFillStruct<CR>', {noremap = true, silent = true})

-- lua 设置 nnoremap <C-w>c :bd<cr>  按下 Ctrl + w 然后紧接着 c 来关闭当前的缓冲区
vim.api.nvim_set_keymap('n', '<C-w>c', ':bd<CR>', {noremap = true, silent = true})



-- lua 设置 let g:fzf_preview_window = ['right:hidden', 'ctrl-/']
vim.g.fzf_preview_window = {'right:hidden', 'ctrl-/'}

-- lua 设置 let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'rounded' } }
vim.g.fzf_layout = {
    up = '~90%',
    window = {
        width = 0.8,
        height = 0.8,
        yoffset = 0.5,
        xoffset = 0.5,
        highlight = 'Todo',
        border = 'rounded'
    }
}

-- lua 设置 let g:fzf_buffers_jump = 1  [Buffers] Jump to the existing window if possible
vim.g.fzf_buffers_jump = 1

-- lua 设置 let g:fzf_action = { 'ctrl-c': ['abort', 'cancel'] }
vim.g.fzf_action = {
    ['ctrl-c'] = {'abort', 'cancel'}
}

-- lua 设置 let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
vim.g.fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

-- lua 设置 let g:fzf_tags_command = 'ctags -R'
vim.g.fzf_tags_command = 'ctags -R'

-- lua 设置 let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'" 
-- 下面是如何设置 FZF_DEFAULT_COMMAND 环境变量，使其使用 rg (Ripgrep) 命令来查找文件，包括隐藏文件，但排除 .git 目录下的所有文件：
vim.fn.setenv("FZF_DEFAULT_COMMAND", "rg --files --hidden --glob '!.git/**'")

-- 使用 rg 工具在当前项目中查询某个字符串
vim.api.nvim_set_keymap('n', '<leader>f', ':RG<CR>', {noremap = true, silent = true})

--  查看最近打开的文件和打开的缓冲区
vim.api.nvim_set_keymap('n','<leader>r', ':History<CR>', {noremap = true, silent = true})

-- 查看打开的缓冲区
vim.api.nvim_set_keymap('n','<leader>j', ':Buffers<CR>', {noremap = true, silent = true})

-- nnoremap <leader>k :Files<cr>  在项目根目录查找文件
vim.api.nvim_set_keymap('n', '<leader>k', ':Files<CR>', { noremap = true, silent = true })

-- lua 设置 nnoremap <leader>l :cd %:p:h<cr>:Files<cr>  在文件所在的目录查找文件
vim.api.nvim_set_keymap('n', '<leader>l', ':cd %:p:h<CR>:Files<CR>', { noremap = true, silent = true })

-- lua 设置 nnoremap <leader>t :Tags<cr>  查找当前项目的 Tag (ctags -R)
vim.api.nvim_set_keymap('n', '<leader>t', ':Tags<CR>', { noremap = true, silent = true })

-- lua 设置 nnoremap <C-Q> :RG<cr>
-- 使得当你按下 <C-Q> （即 Control + Q）时，执行 :RG<CR> 命令，你可以使用 vim.api.nvim_set_keymap 函数
vim.api.nvim_set_keymap('n', '<C-Q>', ':RG<CR>', { noremap = true, silent = true })
-- lua 设置 nnoremap <C-R> :History<cr> 用于查看和搜索命令历史、文件历史  
-- '<C-R>'：指定要映射的按键组合，这里是 Control + R
vim.api.nvim_set_keymap('n', '<C-R>', ':History<CR>', { noremap = true, silent = true })

-- lua 设置 nnoremap <C-E> :Buffers<cr> 
-- <C-E>：指定要映射的按键组合，这里是 Control + E。
vim.api.nvim_set_keymap('n', '<C-E>', ':Buffers<CR>', { noremap = true, silent = true })

-- lua 设置 nnoremap <C-K> :Files<cr>
-- '<C-K>' 是要映射的按键，这里是 Control + K。
-- ':Files<CR>' 是当你按下 <C-K> 时要执行的命令。:Files 是执行的命令，<CR> 代表回车键，所以这个命令的效果就是输入 :Files 后按下回车键
vim.api.nvim_set_keymap('n', '<C-K>', ':Files<CR>', { noremap = true, silent = true })

-- lua 设置 vim lua api  inoremap { {<cr>}<Esc>ko
-- 输入 { 后自动插入成对的 {}，并且光标位于这对大括号的中间，并且在新的一行上
vim.api.nvim_set_keymap('i', '{', '{<cr>}<Esc>ko', { noremap = true, silent = true })
-- lua 设置 inoremap ( ()<Esc>ha   这些映射会在你输入 (、[、"、' 或 ` 时自动插入它们的成对符号，并将光标移动到成对符号之间
vim.api.nvim_set_keymap('i', '(', '()<Esc>ha', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Esc>ha', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Esc>ha', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', "'", "''<Esc>ha", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '`', '``<Esc>ha', { noremap = true, silent = true })

-- nerdtree
-- lua 设置 nnoremap <leader>n :NERDTreeFocus<CR>
vim.api.nvim_set_keymap('n', '<leader>e', ':NERDTreeFocus<CR>', { noremap = true, silent = true })
-- Map <C-n> to open NERDTree
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })
-- Map <C-t> to toggle NERDTree
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
-- Map <C-f> to find the current file in NERDTree
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', { noremap = true, silent = true })

-- 创建或清空 "go" 自动命令组
local go_augroup = vim.api.nvim_create_augroup("go", { clear = true })

-- 设置 Go 文件的 tabstop 和 shiftwidth
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  group = go_augroup,
  pattern = "*.go",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})

-- :GoTest
vim.api.nvim_create_autocmd("FileType", {
  group = go_augroup,
  pattern = "go",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<leader>t', '<Plug>(go-test)', {noremap = false, silent = true})
  end,
})

-- :GoDoc
vim.api.nvim_create_autocmd("FileType", {
  group = go_augroup,
  pattern = "go",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>d', '<Plug>(go-doc)', {noremap = false, silent = true})
  end,
})

-- :GoInfo
vim.api.nvim_create_autocmd("FileType", {
  group = go_augroup,
  pattern = "go",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>i', '<Plug>(go-info)', {noremap = false, silent = true})
  end,
})

-- :GoMetaLinter
vim.api.nvim_create_autocmd("FileType", {
  group = go_augroup,
  pattern = "go",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>l', '<Plug>(go-metalinter)', {noremap = false, silent = true})
  end,
})

-- :GoDef in a vertical split
vim.api.nvim_create_autocmd("FileType", {
  group = go_augroup,
  pattern = "go",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>v', '<Plug>(go-def-vertical)', {noremap = false, silent = true})
  end,
})

-- :GoDef in a horizontal split
vim.api.nvim_create_autocmd("FileType", {
  group = go_augroup,
  pattern = "go",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>s', '<Plug>(go-def-split)', {noremap = false, silent = true})
  end,
})

-- 设置全局 wrap
vim.api.nvim_create_autocmd({"BufNewFile", "BufFilePre", "BufRead"}, {
  group = go_augroup,
  pattern = "*",
  callback = function()
    vim.opt.wrap = true
  end,
})


function RipgrepFzf(query, fullscreen)
  local command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  local initial_command = string.format(command_fmt, vim.fn.shellescape(query))
  local reload_command = string.format(command_fmt, '{q}')
  local spec = {options = {'--phony', '--query', query, '--bind', 'change:reload:'..reload_command}}

  -- Call the fzf#vim#grep function (assuming fzf.vim plugin is available and loaded)
  -- Note: You may need to adjust this part if you're using a different FZF integration or if the API changes
  vim.fn['fzf#vim#grep'](initial_command, 1, vim.fn['fzf#vim#with_preview'](spec), fullscreen)
end


vim.api.nvim_create_user_command('RG', function(opts)
  -- opts.args contains the arguments passed to the command
  -- opts.bang represents the presence of a bang (!) when the command is called
  RipgrepFzf(opts.args, opts.bang)
end, {nargs = '*', bang = true})



