# fzf-widgets
## Overview
This repository manage ZLE widgets of fzf.

## Installation
You can use zplug to install fzf-widgets.
Add following to your `.zshrc`.

```zsh
zplug 'ytet5uy4/fzf-widgets'
```

## Configuration
Add following to your `.zshrc`.

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

## License
Copyright (c) 2017 ytet5uy4  
Released under the MIT License, see **[LICENSE.md]**.

[LICENSE.md]: //github.com/ytet5uy4/fzf-widgets/blob/master/LICENSE.md
