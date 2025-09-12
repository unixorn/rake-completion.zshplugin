# rake-completion.zshplugin

A `rake` task tab completion plugin for ZSH, suitable for use with [zgenom](https://github.com/jandamm/zgenom) and other [oh-my-zsh](http://ohmyz.sh/) -compatible frameworks. It was converted from a blog post at the Ruby on Rails blog, but as a ZSH plugin it can be used more easily with the [zsh-quickstart-kit](https://github.com/unixorn/zsh-quickstart-kit).

For speed, this caches the output for later usage in a `.rake_tasks` file in the same directory as the `Rakefile`. When the `Rakefile` is newer than `.rake_tasks`, it will automatically rebuild the cache.

You should add `.rake_tasks` to your global [.gitignore](https://help.github.com/articles/ignoring-files#global-gitignore) so your repositories don't get polluted.

## How to install

## Antigen

Add a bundle entry to your `.zshrc`
```bash
antigen bundle unixorn/rake-completion.zshplugin
```

### [Oh-My-Zsh](http://ohmyz.sh/)

1. `cd ~/.oh-my-zsh/custom/plugins`
2. `git clone repo`
3. Add the repo to your plugin list

### [Prezto](https://github.com/sorin-ionescu/prezto)

1. Clone the plugin into your prezto modules directory
2. Add the plugin to your `.zpreztorc` file
3. Open a new terminal window or tab

## [zgenom](https://github.com/jandamm/zgenom)

Add a `zgenom load` entry to your `.zshrc` with your other plugins:
`zgenom load unixorn/rake-completion.zshplugin`
