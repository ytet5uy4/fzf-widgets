export FZF_WIDGETS_ROOT="$0:a:h"

: "Create cache directory" && () {
  if [[ -n $XDG_CACHE_HOME ]]; then
    [[ ! -d $XDG_CACHE_HOME ]] && mkdir $XDG_CACHE_HOME
    private dir="$XDG_CACHE_HOME/fzf-widgets"
  else
    private dir="/tmp/fzf-widgets"
  fi
  [[ ! -d $dir ]] && mkdir $dir
  export FZF_WIDGETS_CACHE="$dir/data.txt"
}

: "Autoload functions and Create widgets" && () {
  private dir="$FZF_WIDGETS_ROOT/autoload"
  fpath=($dir/**/*(N-/) $fpath)

  autoload -Uz `ls -F $dir/**/* | grep -v /`

  private w
  for w in `ls $dir/widgets/`; do zle -N $w; done
}

# Support zsh-autosuggestions
if [[ -n ZSH_AUTOSUGGEST_IGNORE_WIDGETS ]]; then
  ZSH_AUTOSUGGEST_IGNORE_WIDGETS=(
    $ZSH_AUTOSUGGEST_IGNORE_WIDGETS
    `ls $FZF_WIDGETS_ROOT/autoload/widgets/`
  )
fi
