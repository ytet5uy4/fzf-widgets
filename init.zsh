export FZF_WIDGET_ROOT="$0:a:h"
export FZF_WIDGET_TMUX=0
typeset -gA FZF_WIDGET_OPTS

: "Create cache directory" && () {
  if [[ -n $XDG_CACHE_HOME ]]; then
    [[ ! -d $XDG_CACHE_HOME ]] && mkdir $XDG_CACHE_HOME
    local dir="$XDG_CACHE_HOME/fzf-widgets"
  else
    local dir="/tmp/fzf-widgets-$USER"
  fi
  [[ ! -d $dir ]] && mkdir $dir && chmod 700 $dir
  export FZF_WIDGET_CACHE="$dir/data.txt"
}

: "Autoload functions and Create widgets" && () {
  local dir="$FZF_WIDGET_ROOT/autoload"
  fpath=($dir/**/*(N-/) $fpath)

  autoload -Uz `ls -F $dir/**/* | grep -v /`

  local w
  for w in `ls $dir/widgets/`; do zle -N $w; done
}

# Support zsh-autosuggestions
if [[ -n ZSH_AUTOSUGGEST_IGNORE_WIDGETS ]]; then
  ZSH_AUTOSUGGEST_IGNORE_WIDGETS=(
    $ZSH_AUTOSUGGEST_IGNORE_WIDGETS
    `ls $FZF_WIDGET_ROOT/autoload/widgets/`
  )
fi
