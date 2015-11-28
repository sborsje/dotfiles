alias dusort='du -d 1 | sort -nr'
alias ls='ls -G'  # BSD/OS X
alias gvim='mvim'

# display battery info on your Mac
# see http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
alias battery='ioreg -w0 -l | grep Capacity | cut -d " " -f 17-50'

# Attempt to use GNU findutils instead of defaults
if which gsed &> /dev/null; then alias sed='gsed'; fi
if which gfind &> /dev/null; then alias find='gfind'; fi

alias guru='~/Projects/goworkspace/src/code.yourkarma-private.com/guru/bin/guru'
