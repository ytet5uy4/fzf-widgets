export FZF_WIDGETS_ROOT="$0:a:h"

fpath=($FZF_WIDGETS_ROOT/autoload/**/*(N-/) $fpath)

autoload -Uz `ls -F $FZF_WIDGETS_ROOT/autoload/**/* | grep -v /`

for w in `ls -F $FZF_WIDGETS_ROOT/autoload/**/* | grep -v / | grep widget`; do
  zle -N $w
done
