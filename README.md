# vim-hidecomments

A Vim plugin that toggles the visibility of comments in your code using Vim's conceal feature.

- 【[Chinese | 中文文档](README_zh.md)】
## Features

- Toggle visibility of single-line and multi-line comments with a single command.
- Supports common programming languages like C, C++, and Python.
- Uses Vim's native conceal feature to hide comments without altering the file content.

## Installation

You can install `vim-hidecomments` using your favorite plugin manager or manually by placing the files in your `.vim` directory.

### Using [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add the following to your `.vimrc`:

    ```vim
    Plug 'warmdew/vim-hidecomments'
    ```

2. Run `:PlugInstall` in Vim.

### Using [Pathogen](https://github.com/tpope/vim-pathogen)

1. Clone this repository into your `.vim/bundle` directory:

    ```sh
    git clone https://github.com/warmdew/vim-hidecomments.git ~/.vim/bundle/vim-hidecomments
    ```

2. Run `:Helptags` in Vim to regenerate help tags.

### Manual Installation

1. Download the plugin files and copy them to your `.vim` directory.

2. Make sure the following lines are in your `.vimrc`:

    ```vim
    filetype plugin on
    ```

## Usage

To toggle the visibility of comments in the current buffer, use the following command in normal mode:

```vim
:HideComments
```

## Configuration
No configuration is required to use this plugin. However, you can map the :HideComments command to a keyboard shortcut in your .vimrc for convenience:

```vim
nmap <Leader>hc :HideComments<CR>
```
​
Replace <Leader>hc with your preferred key combination.

License
This plugin is released under the MIT License. See LICENSE file for more details.