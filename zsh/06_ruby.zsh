# open stuff with vim
export BUNDLER_EDITOR='vim'
export GEMEDITOR='vim'

# checks to see if bundler is installed, if it isn't it will install it
# checks to see if your bundle is complete, runs bundle install if it isn't
# if any arguments have been passed it will run it with bundle exec
function b() {
  gem which bundler > /dev/null 2>&1 || gem install bundler --no-ri --no-rdoc
  bundle check || bundle install
  if [ $1 ]; then
    bundle exec $*
  fi
}

alias be='bundle exec'
alias gems='cd $(gem env gemdir)/gems'

# I've switched to pry
alias irb='pry'

# Rails
alias sc="[ -f script/console ] && script/console || bundle exec rails console"
alias sdb="[ -f script/dbconsole ] && script/console --include-password || bundle exec rails dbconsole --include-password"
alias ss="[ -f script/server ] && script/server || rails server"
alias mig='rake db:migrate'
alias rr='mkdir -p tmp && touch tmp/restart.txt'

alias dlog='tail -f log/development.log'
alias tlog='tail -f log/test.log'
alias plog='tail -f log/production.log'
