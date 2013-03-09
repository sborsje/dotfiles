export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export SHELL=$(which zsh)

export DOTFILES_ROOT=$HOME/.dotfiles

# Load common modules
for f in $DOTFILES_ROOT/zsh/??_*; do
  source $f
done

# Load OS-specific modules
system_name=`uname -a`
case $system_name in
  Darwin*)
    for f in $DOTFILES_ROOT/zsh/osx/??_*; do
      source $f
    done
    ;;
  *)
    for f in $DOTFILES_ROOT/zsh/linux/??_*; do
      source $f
    done
    ;;;
esac

export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:/usr/local/sbin
