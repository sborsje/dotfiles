case $TERM in (*xterm*|ansi)
  function settab { print -Pn "\e]1;%m: %~\a" }
  function settitle { print -Pn "\e]2;%n@%m: %~\a" }
  function preexec { print -Pn "\e]1;%m:$(history $HISTCMD | cut -b7- ) \a" }
  function precmd { settab; settitle }
  ;;
esac
