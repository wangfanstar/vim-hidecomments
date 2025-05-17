Vim/Neovim Concealment Features
In Vim/Neovim, the conceal feature allows you to hide or replace specific parts of text lines with other characters, typically used to display code more concisely or clearly. The conceallevel option controls the behavior of the conceal feature, while setlocal is a command used to set options only for the current buffer without affecting others.

The meaning of setlocal conceallevel=2 is:

setlocal: Sets an option for the current buffer only, without changing the global option or affecting other buffers.
conceallevel: This is an option that can be set to several different values, each controlling the behavior of the conceal feature.
2: This value indicates that matching text should be hidden without displaying substitute characters in normal mode. When you enter insert mode or select mode, the hidden text will become visible.
The conceallevel option can have the following values:

In Vim, conceallevel and concealcursor are two related settings that determine the behavior of the conceal feature when the cursor is on a line:

conceallevel controls when text with the conceal attribute is hidden:

0 or unset - Never hide text.
1 - Hide text in lines without the cursor.
2 - Hide text even when the cursor is on the line.
3 - Hide all matching text, ignoring the concealcursor setting.
concealcursor controls hidden text behavior on the line with the cursor:

n - Display text in normal mode.
v - Display text in visual mode.
c - Display text in command-line and insert mode.
nc - Display text in normal mode and command-line/insert mode.
When concealcursor is set to empty, Vim documentation indicates that text on the cursor line will be displayed in all modes, even if conceallevel is set to hide text.
To make comments appear on the cursor line, you need to set conceallevel to 1 or 2 and properly configure concealcursor.
