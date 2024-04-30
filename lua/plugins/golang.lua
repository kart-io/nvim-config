local function config() 
  -- let g:indentLine_enabled = 1
  vim.g.indentLine_enabled = 1
  
  --  golang configure ====> start
  --  Override the icase field in 'omnifunc' results. By default it is set to 0.
  --  See 'complete-items' for details.
  vim.g.go_code_completion_icase = 1

  -- Use this option to show the type info (|:GoInfo|) for the word under the
  --  cursor automatically. Whenever the cursor changes the type info will be
  -- updated. By default it's disabled. The delay can be configured with the
  -- |'g:go_updatetime'| setting.
  vim.g.go_auto_type_info = 0
  vim.g.go_imports_mode = "goimports"

  vim.g.go_version_warning = 1 
  -- 开启`omnifunc`代码自动补全，默认开启
  vim.g.go_code_completion_enabled = 1
  vim.g.go_auto_type_info = 1
  
  -- 保存时执行gofmt格式化代码，默认开启
  vim.g.go_fmt_autosave = 1
  -- 保存时自动删除无用的包，添加缺失的包。这里可以关闭，否则保存时，经常容易卡死或者保存延时很高
  vim.g.go_imports_autosave = 0
  -- 保存时自动格式化go.mod文件
 vim.g.go_mod_fmt_autosave = 1
 -- 格式化代码时简化代码 
 --let g:go_fmt_options = {
 --   \ 'gofmt': '-s',
 --   \ }
 vim.g.go_fmt_options = { gofmt = '-s'}
  -- 指定格式化代码时使用的命令，可选命令：gofmt, goimports, gopls
  vim.g.go_fmt_command = "goimports" 
  -- 当格式化失败时，不报错。
 vim.g.go_fmt_fail_silently = 1

end

return {
  config = config
}
