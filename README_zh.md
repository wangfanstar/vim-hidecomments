# HideComments Vim 插件

HideComments 是一个 Vim 插件，它允许您轻松地切换代码中注释的可见性。该插件为 C/C++ 和 Python 文件提供支持，当注释被隐藏时，可以让您更简洁地查看代码。
可以使用 Vim 的 `conceal` 特性来切换代码中注释的可见性。

## 特性

- 用一个命令切换单行和多行注释的可见性。
- 支持常见的编程语言，如 C、C++ 和 Python。
- 使用 Vim 的原生 `conceal` 特性隐藏注释，不修改文件内容。

## 安装

你可以使用你喜欢的插件管理器安装 `vim-hidecomments`，或者手动将文件放入你的 `.vim` 目录中。

### 使用 [Vim-Plug](https://github.com/junegunn/vim-plug)

1. 在你的 `.vimrc` 中添加以下内容：

    ```vim
    Plug 'warmdew/vim-hidecomments'
    ```

2. 在 Vim 中运行 `:PlugInstall` 命令。

### 使用 [Pathogen](https://github.com/tpope/vim-pathogen)

1. 克隆此仓库到你的 `.vim/bundle` 目录：

    ```sh
    git clone https://github.com/warmdew/vim-hidecomments.git ~/.vim/bundle/vim-hidecomments
    ```

2. 在 Vim 中运行 `:Helptags` 生成帮助标签。

### 手动安装

1. 下载插件文件并将它们复制到你的 `.vim` 目录下。

2. 确保你的 `.vimrc` 中包含以下行：

    ```vim
    filetype plugin on
    ```

## 使用方法

在普通模式下，使用以下命令来切换当前缓冲区中的注释可见性：

```vim
:HideComments
```

## 配置

使用这个插件无需任何配置。然而，为了方便，你可以在 `.vimrc` 中将 `:HideComments` 命令映射到一个键盘快捷键上：

```vim
nmap <Leader>hc :HideComments<CR>
```

将 `<Leader>hc` 替换为你喜欢的键位组合。

## 许可证

该插件在 MIT 许可证下发布。更多细节请查看 `LICENSE` 文件。

