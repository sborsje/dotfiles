# Management
alias dotfiles="cd $DOTFILES_ROOT"

# Shell
alias please='sudo'
alias fucking='sudo'
alias ll='ls -alh'
alias sl='ll'
alias l='ll'
alias cdd='cd -'  # back to last directory
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias mv='mv -i'
alias rm='rm -i'
alias tf='tail -f -n 0'
alias ducks='du -cks * | sort -nr'
alias less='less -R' # correctly interpret ASCII color escapes
alias nyan="TERM=1 telnet miku.acm.uiuc.edu"
alias grep='grep --colour=always'
function ghc {
  git clone git@github.com:$1.git
}

# Misc
alias hosts='sudo vim /etc/hosts'
alias tarball='tgz'

# Attempt to create an easy to remember mirror alias by using wget with some
# default options. Usage: mirror http://<site>, or when only interested in a
# specific subdirectory: mirror -np http://<site>/<subdir>/
if which wget &> /dev/null; then alias mirror='wget -m -nH -E -k -N'; fi

# Awk shortcuts, creates col1 .. col20
for (( i = 0 ; i <= 20 ; i++ )); do alias "col$i"="awk '{print \$$i}'"; done

# Prefer colordiff
[[ -x $(which colordiff) ]] && alias diff="colordiff -u" || alias diff="diff -u"

# grep for a process
function psg {
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps aux | grep "[$FIRST]$REST"
}
