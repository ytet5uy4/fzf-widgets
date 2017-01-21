# fzf-widgets - ZLE widgets of fzf

[Overview](#overview) |
[Installation](#installation) |
[Configuration](#configuration) |
[License](#license)

[![license-badge]][license-link]
[![release-badge]][release-link]

## Overview
This repository manage ZLE widgets of fzf.

currently these widgets are available:
* select-widget
* change-dir
* change-recent-dir
* change-repository
* edit-files
* edit-dotfiles
* exec-history
* exec-ssh
* git-add
* git-checkout
* copy-password
* switch-network

## Installation
You can use zplug to install fzf-widgets.
Add the following to your `.zshrc`:

```zsh
zplug 'ytet5uy4/fzf-widgets'
```

## Configuration
You can map widgets to whatever key you like.
Add the following to your `.zshrc`:

```zsh
if zplug check 'ytet5uy4/fzf-widgets'; then
  bindkey '^@'   fzf-select-widget
  bindkey '^@c'  fzf-change-dir
  bindkey '^\'   fzf-change-recent-dir
  bindkey '^@g'  fzf-change-repository
  bindkey '^@f'  fzf-edit-files
  bindkey '^@.'  fzf-edit-dotfiles
  bindkey '^r'   fzf-exec-history
  bindkey '^@s'  fzf-exec-ssh
  bindkey '^@ga' fzf-git-add
  bindkey '^@gb' fzf-git-checkout
  bindkey '^@p'  fzf-copy-password
  bindkey '^@n'  fzf-switch-network
fi
```

To use `fzf-change-recent-dir`, add the following to your `.zshrc`:

```
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
```

## License
Copyright (c) 2017 ytet5uy4  
Released under the MIT License, see **[LICENSE.md][license-link]**.

[release-link]: https://github.com/ytet5uy4/fzf-widgets/releases/latest
[release-badge]: https://img.shields.io/github/release/ytet5uy4/fzf-widgets.svg?style=flat-square
[license-link]: LICENSE.md
[license-badge]: https://img.shields.io/github/license/ytet5uy4/fzf-widgets.svg?style=flat-square
