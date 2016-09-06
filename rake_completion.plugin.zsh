# This is from 
#
# http://weblog.rubyonrails.org/2006/3/9/fast-rake-task-completion-for-zsh/
#
# Wanted it in a plugin so I could use it now that I've switched to zgen

_rake () {
  if [ -f Rakefile ]; then
    if [[ ! -f .rake_tasks || Rakefile -nt .rake_tasks ]]; then
      echo "\nGenerating .rake_tasks..." > /dev/stderr
      rake --silent --tasks | cut -d " " -f 2 > .rake_tasks
    fi
    compadd $(cat .rake_tasks)
  fi
}

compdef _rake rake
