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
 -- 开启gofmt实验模式
 vim.g.go_fmt_experimental = 1
 -- 键入shift-k时，在另一个窗口显示光标下word的godoc
 vim.g.go_doc_keywordprg_enabled = 1
 -- 使用浮动窗口显示word的godoc信息
 vim.g.go_doc_popup_window = 1
 -- Maximum height for the GoDoc window created with |:GoDoc|. Default is 20.
 vim.g.go_doc_max_height = 20
 -- Show GoDoc in balloon.
 vim.g.go_doc_balloon = 0
 -- Use this option to define the command to be used for |:GoFillStruct|. By
 -- default `fillstruct` is used. Valid values are `fillstruct` and `gopls`. By
 vim.g.go_fillstruct_mode = 'fillstruct'
 

 vim.g.go_referrers_mode = 'gopls'


 vim.g.go_implements_mode = 'gopls'
 -- :GoDef所执行的命令，可选项：godef, gopls和guru。默认gopls，因为它很快
 vim.g.go_def_mode = 'gopls'
 -- 是否可以使用gopls，默认可以
 vim.g.go_gopls_enabled = 1

 -- Use this option to jump to an existing buffer for `:GoDef`, `:GoDefType`, and
 vim.g.go_def_reuse_buffer = 1
 -- The commandline arguments to pass to gopls.
 -- By default, it is `['-remote=auto']`.
 vim.g.go_gopls_options = ['-remote=auto']


 -- 执行`:GoAddTags`时tag名字格式，这里设置为驼峰格式
 vim.g.go_addtags_transform = 'camelcase'

 -- 高亮函数和方法
 vim.g.go_highlight_function_parameters = 1
 vim.g.go_highlight_diagnostic_errors = 1
 vim.g.go_highlight_diagnostic_warnings = 1
 vim.g.go_highlight_string_spellcheck = 1
 vim.g.go_highlight_format_strings = 1
 vim.g.go_highlight_function_calls = 1
 vim.g.go_highlight_methods = 1
 vim.g.go_highlight_build_constraints = 1
 vim.g.go_highlight_types = 1
 vim.g.go_highlight_fields = 1
 vim.g.go_highlight_functions = 1
 vim.g.go_highlight_generate_tags = 1
 vim.g.go_highlight_trailing_whitespace_error = 1
 vim.g.go_highlight_array_whitespace_error = 1
 vim.g.go_highlight_extra_types = 1
 vim.g.go_highlight_space_tab_error = 1
 vim.g.go_highlight_operators = 1
end

return {
  config = config
}
