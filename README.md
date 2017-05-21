# fzf-widgets - ZLE widgets of fzf

[Overview](#overview) |
[Installation](#installation) |
[Requirements](#requirements) |
[Configuration](#configuration) |
[License](#license)

[![license-badge]][license-link]
[![release-badge]][release-link]

## Overview

This repository manage ZLE widgets of fzf.

![screenshot]

## Installation

You can use zplug to install fzf-widgets. Add the following to your `.zshrc`:

```zsh
zplug 'ytet5uy4/fzf-widgets'
```

## Requirements

`zsh`: version 5.0.2 or higher

## Configuration

You can map widgets to whatever key you like and specify options of `fzf` to
each widgets with `$FZF_WIDGETS_OPTS`. Add the following to your `.zshrc`:

```zsh
if zplug check 'ytet5uy4/fzf-widgets'; then
  # Map widgets to key
  bindkey '^@'    fzf-select-widget
  bindkey '^@.'   fzf-edit-dotfiles
  bindkey '^@c'   fzf-change-directory
  bindkey '^@f'   fzf-edit-files
  bindkey '^@k'   fzf-kill-processes
  bindkey '^@s'   fzf-exec-ssh
  bindkey '^\'    fzf-change-recent-directory
  bindkey '^r'    fzf-insert-history

  ## Git
  bindkey '^@g'   fzf-git-change-repository
  bindkey '^@ga'  fzf-git-add-files
  bindkey '^@gc'  fzf-git-checkout-branch
  bindkey '^@gd'  fzf-git-delete-branches

  ## Docker
  bindkey '^@d'   fzf-select-docker-widget
  bindkey '^@dk'  fzf-docker-kill-containers
  bindkey '^@dl'  fzf-docker-logs-container
  bindkey '^@dr'  fzf-docker-remove-containers
  bindkey '^@dri' fzf-docker-remove-images
  bindkey '^@drv' fzf-docker-remove-volumes
  bindkey '^@dsa' fzf-docker-start-containers
  bindkey '^@dso' fzf-docker-stop-containers

  # Enable Exact-match by fzf-insert-history
  FZF_WIDGETS_OPTS[insert-history]='--exact'
fi
```

To use `fzf-change-recent-directory`, add the following to your `.zshrc`:

```
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
```

To use `fzf-git-change-repository`, install [ghq][ghq-link].

To use `fzf-edit-dotfiles`, add the following to your `.zshenv`:

```
export $DOT_BASE_DIR=/path/to/dir/dotfiles
```

## License

Copyright (c) 2017 ytet5uy4

Released under the MIT License, see **[LICENSE.md][license-link]**.

[screenshot]: https://raw.githubusercontent.com/wiki/ytet5uy4/fzf-widgets/screenshot.png
[release-badge]: https://img.shields.io/github/release/ytet5uy4/fzf-widgets.svg?style=flat-square
[license-badge]: https://img.shields.io/github/license/ytet5uy4/fzf-widgets.svg?style=flat-square

[release-link]: //github.com/ytet5uy4/fzf-widgets/releases/latest
[license-link]: LICENSE.md

[ghq-link]: //github.com/motemen/ghq
