# tmux

This is my tmux config, made for studying.
For best use, make sure to check out my other configurations for [foot](https://github.com/TheGogy/dotfiles/blob/main/foot/foot.ini) and [neovim](https://github.com/TheGogy/nvim/).

# Installation

```bash
# Backup current configuration
mv ~/.config/tmux ~/.config/tmux.bak

# Install configuration
git clone https://github.com/TheGogy/tmux ~/.config/tmux

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux
```
When tmux opens, press `ctrl-a` and `I` to install the required plugins.

# Keymaps

The prefix is `ctrl` + `a`.

| Keymap         | Command                                    |
| -------------- | ------------------------------------------ |
| `prefix` + `r` | Reload tmux configuration                  |
| `alt` + `<n>`  | Switch to pane `n` (unless running nvim) |
| `alt` + `h`    | Switch to previous pane.                   |
| `alt` + `l`    | Switch to next pane.                       |
| `ctrl` + `t`   | Create new pane.                           |
| `ctrl` + `y`   | Create new pane in current directory.      |
| `ctrl` + `w`   | Delete current pane.                       |
| `ctrl` + `x`   | Toggle synchronize panes.                  |

