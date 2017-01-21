export FZF_WIDGETS_ROOT="$0:a:h"

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
