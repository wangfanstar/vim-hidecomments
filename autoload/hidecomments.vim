" autoload/hidecomments.vim
function! hidecomments#Toggle()
  " 检查是否已经设置了 conceal 状态
  if exists('b:hidecomments_concealed')
    " 如果已经设置了 conceal，那么取消 conceal 设置，恢复文本显示
    let &l:conceallevel = b:hidecomments_conceallevel
    let &l:concealcursor = b:hidecomments_concealcursor
    " 移除 conceal 语法规则
    syntax clear Comment
    " 清除缓冲区变量
    unlet b:hidecomments_concealed
    unlet b:hidecomments_conceallevel
    unlet b:hidecomments_concealcursor
  else
    " 保存当前的 conceal 状态
    let b:hidecomments_concealed = 1
    let b:hidecomments_conceallevel = &l:conceallevel
    let b:hidecomments_concealcursor = &l:concealcursor
    " 设置 conceal 级别为1，这样只有当光标不在注释行时注释才会被隐藏
    setlocal conceallevel=1
    " 设置 concealcursor 为空，这样在普通模式下光标所在行的隐藏文本会显示
    setlocal concealcursor=
    " 根据文件类型添加 conceal 语法
    if &filetype == 'c' || &filetype == 'cpp'
      " 匹配 C/C++ 风格的单行和多行注释
      syntax match Comment "\/\*\_.\{-}\*\/\|\/\/.*" conceal
    elseif &filetype == 'python'
      " 匹配 Python 风格的注释
      syntax match Comment "#.*" conceal
    endif
  endif
endfunction
