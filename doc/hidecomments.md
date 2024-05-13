在 Vim/Neovim 中，conceal 特性允许你隐藏或用其他字符替换文本行中的特定部分，这通常用于更简洁或更清晰地显示代码。conceallevel 是一个选项，用于控制 conceal 特性的行为，而 setlocal 是一个命令，用于设置只针对当前缓冲区的选项，而不会影响其他缓冲区。

setlocal conceallevel=2 的意思是：

setlocal：为当前缓冲区设置一个选项，不改变全局选项或影响其他缓冲区。
conceallevel：这是一个可以设置为几个不同值的选项，每个值都控制着 conceal 特性的行为。
2：这个值表示隐藏匹配的文本，而不在正常模式下显示替代字符。当你进入插入模式或选择模式时，隐藏的文本将变得可见。
conceallevel 有以下可能的值：

在 Vim 中，conceallevel 和 concealcursor 是两个相关的设置，它们决定了当光标在一行上时 conceal 特性的行为：

conceallevel 控制何时隐藏具有 conceal 属性的文本。

0 或不设置 - 永不隐藏文本。
1 - 隐藏没有光标的行中的文本。
2 - 即使光标在行上，也隐藏文本。
3 - 隐藏所有符合的文本，忽略 concealcursor 的设置。
concealcursor 控制光标所在行的隐藏文本行为。

n - 普通模式下显示文本。
v - 可视模式下显示文本。
c - 命令行和插入模式下显示文本。
nc - 普通模式和命令行/插入模式下显示文本。
   - concealcursor 被设置为空，这在 Vim 文档中表示在所有模式下光标所在行的文本都会显示，即使 conceallevel 设置为隐藏文本。
   
为了使注释在光标所在行显示出来，你需要将 conceallevel 设置为 1 或 2，并正确设置 concealcursor。
