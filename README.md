# Overview
This repository manage ZLE widgets of fzf.

# Installation
```zsh
% zplug 'ytet5uy4/fzf-widgets'
```

# Configuration
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
