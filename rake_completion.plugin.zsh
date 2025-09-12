# Copyright 2014-2025 Joe Block <jpb@unixorn.net>
#
# This is from 
#
# http://weblog.rubyonrails.org/2006/3/9/fast-rake-task-completion-for-zsh/
#
# Format as a plugin so I can use it with zgenon in the ZSH quickstart kit

_rake () {
  if [ -f Rakefile ]; then
    if [[ ! -f .rake_tasks || Rakefile -nt .rake_tasks ]]; then
      rake --silent --tasks | cut -d " " -f 2 > .rake_tasks
    fi
    compadd $(cat .rake_tasks)
  fi
}

compdef _rake rake
