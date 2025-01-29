
# tmux

This is my tmux config, made for studying.
For best use, make sure to check out my other configurations for [foot](https://github.com/TheGogy/dotfiles/blob/main/foot/foot.ini) and [neovim](https://github.com/TheGogy/nvim/).

## Contents
* [Installation](#installation)
* [Keymaps](#Keymaps)
* [Showcase](#Showcase)

# Installation

```bash
# Backup current configuration
mv ~/.config/tmux ~/.config/tmux.bak

# Install configuration
git clone https://github.com/TheGogy/tmux ~/.config/tmux

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Remove unneccessary stuff
rm -rf ~/.config/tmux/showcase
rm -rf ~/.config/tmux/.git

tmux
```
When tmux opens, press `ctrl-a` and `I` to install the required plugins.

# Keymaps

The prefix is `ctrl` + `a`.

| Keymap               | Command                                    |
| -------------------- | ------------------------------------------ |
| `prefix` + `r`       | Reload tmux configuration                  |
| `alt` + `<n>`        | Switch to pane `n` (unless running nvim)   |
| `alt` + `h`          | Switch to previous pane.                   |
| `alt` + `l`          | Switch to next pane.                       |
| `ctrl` + `t`         | Create new pane.                           |
| `ctrl` + `y`         | Create new pane in current directory.      |
| `ctrl` + `w`         | Delete current pane.                       |
| `ctrl` + `x`         | Toggle synchronize panes.                  |
| `ctrl` + `{h,j,k,l}` | Move between windows                       |

# Showcase

![showcase](https://github.com/user-attachments/assets/f8801836-0261-4b83-b83c-c5ffaaccf1fa)
