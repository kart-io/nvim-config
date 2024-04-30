# vim-config

## 快捷键

```sh
-- 使用 rg 工具在当前项目中查询某个字符串
vim.api.nvim_set_keymap('n', '<leader>f', ':RG<CR>', {noremap = true, silent = true})

```

说明：

  'n'：这表示映射仅在普通模式（normal mode）下有效。
  '<leader>f'：这是你要映射的按键组合。由于你之前已经将 <Space> 设置为 leader 键，这里 <leader>f 实际上是指 <Space>f。
  ':RG<CR>'：这是按下 <leader>f 时要执行的命令。:RG 是命令，<CR> 表示回车，即执行该命令。
   {noremap = true, silent = true}：这是一个包含映射选项的表（table）。noremap = true 表示这是一个非递归映射，避免了映射之间可能发生的无限循环。silent = true 表示执行映射时不会在命令行区显示任何消息。

请确保你的 Neovim 环境中有 :RG 命令可用。RG 通常与 ripgrep 集成的插件相关，比如 fzf.vim 或 telescope.nvim 中的搜索功能。如果你没有安装相关插件或 :RG 命令不是默认提供的，这个映射将不会正常工作，你可能需要根据你的插件或配置调整命令。


```sh
vim.api.nvim_set_keymap('n', '<2-LeftMouse>', ':GoDef<CR>', {silent = true, noremap = true})
```

说明：
    'n'：这指定了映射仅在普通模式下有效。
    '<2-LeftMouse>'：这是要映射的按键，代表鼠标中键点击。
    ':GoDef<CR>'：这是执行的命令。:GoDef 是命令，<CR> 代表回车键，用于执行命令。
    {silent = true, noremap = true}：这是一个包含映射选项的表。silent = true 意味着执行映射时不会在命令行区显示任何消息。noremap = true 指定这是一个非递归映射，避免了映射之间可能发生的无限循环。


### 鼠标右键，你应该使用 <RightMouse> 作为按键标识。

```sh
vim.api.nvim_set_keymap('n', '<RightMouse>', ':GoDefPop<CR>', {silent = true, noremap = true})
```

说明:
    'n'：指定这个映射只在普通模式（normal mode）下有效。
    '<RightMouse>'：这是你想要映射的按键，即鼠标的右键点击。
    ':GoDefPop<CR>'：这是按下鼠标右键时要执行的命令。:GoDefPop 是命令，<CR> 表示回车，即执行该命令。
    {silent = true, noremap = true}：这是一个包含映射选项的表（table）。silent = true 表示执行映射时不会在命令行区显示任何消息。noremap = true 表示这是一个非递归映射，避免了映射之间可能发生的无限循环。


```sh
vim.api.nvim_set_keymap('n', '<CR>', ':GoDef<CR>', {noremap = true, silent = true})
```

说明:
    vim.api.nvim_set_keymap 是用于设置键映射的 Neovim API 函数。
    第一个参数 'n' 表示这个映射仅在普通模式下有效。
    第二个参数 '<CR>' 是你想映射的按键，即回车键。
    第三个参数 ':GoDef<CR>' 是当你按下回车键时执行的命令。<CR> 代表回车，用于执行 :GoDef 命令。
    第四个参数是一个包含映射选项的 Lua 表。在这个例子中，{noremap = true, silent = true} 指定了两个选项：
      noremap = true 防止递归映射，这意味着如果 :GoDef 被映射到其他命令，执行 <CR> 不会触发这个其他命令。
      silent = true 防止执行映射时在命令行显示任何消息。


```sh
vim.api.nvim_set_keymap('n', '<C-I>', ':GoDefPop<CR>', {noremap = true, silent = true})
```

说明:
    nnoremap（对于 Vim）或 vim.api.nvim_set_keymap('n', ...)（对于 Neovim）指定这是一个普通模式下的非递归映射。
    <C-I> 是你想要映射的按键组合（Control + I）。
    :GoDefPop<CR> 是执行的命令，其中 <CR> 表示回车，用于执行命令。
    {noremap = true, silent = true} 是 Neovim 中设置映射选项的方式，其中 noremap 防止递归映射，silent 避免执行时的额外消息输出。


### 这通常用于查看 Go 语言的文档
```sh
vim.api.nvim_set_keymap('n', '<S-K>', ':GoDoc<CR>', {noremap = true, silent = true})
```

说明:
    vim.api.nvim_set_keymap 是用于设置键盘映射的 Neovim API 函数。
    'n' 表示这个映射仅在普通模式（Normal mode）下有效。
    '<S-K>' 是你想要映射的按键组合，这里是 Shift + K。
    ':GoDoc<CR>' 是当你按下 Shift + K 时执行的命令。这里的 <CR> 代表回车，用于执行 :GoDoc 命令。
    {noremap = true, silent = true} 是一个包含映射选项的 Lua 表：
        noremap = true 选项表示这是一个非递归映射，防止因映射中的命令被其他映射所替代而引发问题。
        silent = true 选项使得执行此映射时不会在命令行中显示任何消息。

### 这个命令通常与 Go 语言相关的插件（如 vim-go）一起使用，用于自动添加错误处理代码

```sh
vim.api.nvim_set_keymap('n', '<S-L>', ':GoIfErr<CR>', {noremap = true, silent = true})
```

说明: 
    vim.api.nvim_set_keymap 是用于创建键盘映射的 Neovim API 函数。
    'n' 指定这个映射仅在普通模式（Normal mode）下有效。
    '<S-L>' 是你想要映射的按键组合，这里指的是 Shift + L。
    ':GoIfErr<CR>' 是按下 Shift + L 时执行的命令。这里的 <CR> 代表回车键，用于执行 :GoIfErr 命令。
    {noremap = true, silent = true} 是一个包含映射选项的 Lua 表：
        noremap = true 表示这是一个非递归映射，防止映射中的命令被其他映射所替代。
        silent = true 使得执行此映射时不会在命令行中显示任何消息。

### 用于跳转到类型定义
```sh
vim.api.nvim_set_keymap('n', '<S-T>', ':GoDefType<CR>', {noremap = true, silent = true})
```

说明：
    vim.api.nvim_set_keymap 是 Neovim 提供的 API 函数，用于创建键盘映射。
    'n' 参数指定这个映射仅在普通模式（Normal mode）下生效。
    '<S-T>' 是你想要映射的按键组合，这里是 Shift + T。
    ':GoDefType<CR>' 是按下 Shift + T 时执行的命令。这里的 <CR> 代表回车键，用于执行 :GoDefType 命令。
    {noremap = true, silent = true} 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映射，防止映射中的命令被其他映射所替代。
        silent = true 表示执行此映射时不会在命令行中显示任何消息。

### 用于显示当前光标下代码的类型信息
```sh
vim.api.nvim_set_keymap('n', '<S-M>', ':GoInfo<CR>', {noremap = true, silent = true})

```
说明：
    vim.api.nvim_set_keymap 是 Neovim 提供的 API 函数，用于创建键盘映射。
    'n' 参数指定这个映射仅在普通模式下生效。
    '<S-M>' 是你想要映射的按键组合，即 Shift + M。
    ':GoInfo<CR>' 是按下 Shift + M 时执行的命令。这里的 <CR> 代表回车键，用于执行 :GoInfo 命令。
    {noremap = true, silent = true} 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映射，防止映射中的命令被其他映射所替代。
        silent = true 表示执行此映射时不会在命令行中显示任何消息。

### 于切换当前标识符的高亮显示
```sh
vim.api.nvim_set_keymap('n', '<S-H>', ':GoSameIdsToggle<CR>', {noremap = true, silent = true})
```

说明：
    vim.api.nvim_set_keymap 是 Neovim 提供的函数，用于创建键盘映射。
    'n' 参数指定这个映射仅在普通模式（Normal mode）下生效。
    '<S-H>' 是你想要映射的按键组合，这里是 Shift + H。
    ':GoSameIdsToggle<CR>' 是按下 Shift + H 时执行的命令。这里的 <CR> 代表回车键，用于执行 :GoSameIdsToggle 命令。
    {noremap = true, silent = true} 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映射，防止映射中的命令被其他映射所替代。
        silent = true 表示执行此映射时不会在命令行中显示任何消息。

### 用于为 Go 结构体添加字段标签

```sh
vim.api.nvim_set_keymap('n', '<S-T>', ':GoAddTag<CR>', {noremap = true, silent = true})

```
说明:
    vim.api.nvim_set_keymap 是 Neovim 提供的函数，用于创建键盘映射。
    'n' 参数指定这个映射仅在普通模式（Normal mode）下生效。
    '<S-T>' 是你想要映射的按键组合，这里是 Shift + T。
    ':GoAddTag<CR>' 是按下 Shift + T 时执行的命令。这里的 <CR> 代表回车键，用于执行 :GoAddTag 命令。
        {noremap = true, silent = true} 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映

### 用于显示当前接口的所有实现或当前结构体实现的所有接口

```sh
vim.api.nvim_set_keymap('n', '<S-P>', ':GoImplements<CR>', {noremap = true, silent = true})

```
说明：
    vim.api.nvim_set_keymap 是 Neovim 提供的函数，用于创建键盘映射。
    'n' 参数指定这个映射仅在普通模式（Normal mode）下生效。
    '<S-P>' 是你想要映射的按键组合，这里是 Shift + P。
    ':GoImplements<CR>' 是按下 Shift + P 时执行的命令。这里的 <CR> 代表回车键，用于执行 :GoImplements 命令。
    {noremap = true, silent = true} 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映射，防止映射中的命令被其他映射所替代。
        silent = true 表示执行此映射时不会在命令行中显示任何消息。

### 用于重命名 Go 语言中的标识符
```sh
vim.api.nvim_set_keymap('n', '<S-R>', ':GoRename<CR>', {noremap = true, silent = true})

```

说明：
    vim.api.nvim_set_keymap: 这是 Neovim 的 Lua API 函数，用于设置键盘映射。
    'n': 表示这个映射仅在普通模式（Normal mode）下有效。
    '<S-R>': 是你想要映射的按键组合，这里是 Shift + R。
    ':GoRename<CR>': 是按下 Shift + R 时执行的命令。<CR> 表示回车键，用于执行 :GoRename 命令。
    {noremap = true, silent = true}: 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映射，避免映射中的命令被其他映射所替代。
        silent = true 表示执行此映射时不会在命令行中显示任何消息。


### 用于查找当前函数的所有调用者

```sh
vim.api.nvim_set_keymap('n', '<S-C>', ':GoCallers<CR>', {noremap = true, silent = true})
```

说明：
    vim.api.nvim_set_keymap 是 Neovim 提供的函数，用于创建键盘映射。
    'n' 参数指定这个映射仅在普通模式（Normal mode）下生效。
    '<S-C>' 是你想要映射的按键组合，这里是 Shift + C。
    ':GoCallers<CR>' 是按下 Shift + C 时执行的命令。这里的 <CR> 代表回车键，用于执行 :GoCallers 命令。
    {noremap = true, silent = true} 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映射，防止映射中的命令被其他映射所替代。
        silent = true 表示执行此映射时不会在命令行中显示任何消息。

### 用于自动填充 Go 语言中的结构体字段。

```sh
vim.api.nvim_set_keymap('n', '<S-F>', ':GoFillStruct<CR>', {noremap = true, silent = true})
```

说明：
    vim.api.nvim_set_keymap 是 Neovim 提供的函数，用于创建键盘映射。
    'n' 参数指定这个映射仅在普通模式（Normal mode）下生效。
    '<S-F>' 是你想要映射的按键组合，这里是 Shift + F。
    ':GoFillStruct<CR>' 是按下 Shift + F 时执行的命令。这里的 <CR> 代表回车键，用于执行 :GoFillStruct 命令。
    {noremap = true, silent = true} 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映射，防止映射中的命令被其他映射所替代。
        silent = true 表示执行此映射时不会在命令行中显示任何消息。

### 通过按下 Ctrl + w 然后紧接着 c 来关闭当前的缓冲区（通常意味着关闭当前的文件标签），可以通过以下 Lua 代码实现

```sh
vim.api.nvim_set_keymap('n', '<C-w>c', ':bd<CR>', {noremap = true, silent = true})

```
说明：
    vim.api.nvim_set_keymap 是 Neovim 提供的函数，用于创建键盘映射。
    第一个参数 'n' 指定这个映射仅在普通模式（Normal mode）下生效。
    第二个参数 '<C-w>c' 是你想要映射的按键组合，这里是 Ctrl + w 然后 c。
    第三个参数 ':bd<CR>' 是按下指定的按键组合时执行的命令。这里的 :bd 是 Vim 命令，用于关闭（删除）当前缓冲区。<CR> 代表回车键，用于执行前面的命令。
    最后一个参数 {noremap = true, silent = true} 是一个 Lua 表，包含了两个映射选项：
        noremap = true 表示这是一个非递归映射，防止映射中的命令被其他映射所替代。
        silent = true 表示执行此映射时不会在命令行中显示任何消息。


### 输入 { 后自动插入成对的 {}，并且光标位于这对大括号的中间，并且在新的一行上

```sh
vim.api.nvim_set_keymap('i', '{', '{<cr>}<Esc>ko', { noremap = true, silent = true })

```
说明:
    vim.api.nvim_set_keymap 是 Neovim 提供的函数，用来设置键位映射。
    'i' 指定映射仅在插入模式下有效。
    '{' 是要映射的按键，这里是左大括号 {。
    '{<cr>}<Esc>ko' 是当你按下 { 时要执行的命令序列。这里：
    {<cr>} 代表输入左大括号 {，接着是回车 <cr>，然后是右大括号 }，这样就在输入的地方创建了成对的大括号，并且在它们之间有一个新的空行。
    <Esc> 使 Vim 退出插入模式回到普通模式。
    k 是 Vim 的命令，使光标向上移动一行。
    o 再次进入插入模式，并在当前行下方打开一个新行，因为前面的 k 命令已经将光标移动到了两个大括号之间的空行，所以这里的 o 实际上是让光标停留在原地并进入插入模式。
    { noremap = true, silent = true } 是一个包含映射选项的表。noremap = true 表示这是一个非递归映射，silent = true 表示执行映射时不会在命令行显示执行的命令。
