
### Gems that should always be installed

gem install gem-path

## Docme: Docs and cheats for various tools

###git
open https://hub.github.com/

Setting up this macbook pro...

# Following instructions found here:
http://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-2-global-package-managers

After finishing OSX installer screens...
Open System Preferences / Sharing -> Changed computer name to MPGMBP2
Open AppStore, Install XCode

# IE8 - XP
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE8_XP/IE8.XP.For.MacVirtualBox.ova"
# IE9 - Win7
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE9_Win7/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"
# IE10 - Win8
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE10_Win8/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar}"

# thinking about what casks I need to install. will revisit later
# https://gist.github.com/zenorocha/7159780

# TODO:
# Have a look at https://github.com/thoughtbot/rcm
# open http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos
# Wait maybe use fresh instead of oh-my-zsh
# http://freshshell.com
# Could clone this to start: https://github.com/jasoncodes/dotfiles
# Christ maybe i should be using boxen?
# Guess for now having a dotfiles repo and Brewfile is a good start

# Check out some of these apps: https://gist.github.com/zenorocha/7159780


## Checklist


### Install xcode developer tools (via terminal) or skip and install via AppStore

    xcode-select --install

### Install oh-my-zsh

    curl -L http://install.ohmyz.sh | sh


### Install homebrew
   
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


### Run brew doctor to make sure everything is ok

    brew doctor

### Install Brew Bundle and all the apps listed in Brewfile
     
    brew tap Homebrew/bundle
    brew bundle


###  Add Dotfiles Repo 


### Symlink Dotfiles Repo

    ln -s dotfiles/vimrc .vimrc
    ln -s dotfiles/zshrc .zshrc
    ln -s dotfiles/gitignore_global .gitignore_global
    ln -s dotfiles/tmux.conf .tmux.conf
    ln -s dotfiles/tool-versions .tool-versions


### Install ASDF for saner version managament

```
https://github.com/asdf-vm/asdf
```

```
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
```

[comment] # (rerwite this using ASDF to install the tool versions)
* global node, and alias default
* global ruby set as default
* global python and set as default


# Install global ruby gems
gem install bundler
gem install rails
gem install gem-path
gem install pg
# nokogiri depends on a brew package ...
gem install nokogiri -- --with-iconv-dir=`brew --prefix libiconv`

## Using vim...

Start vim - plugins should install automagically. 
To see if it worked, run `:PlugStatus` and maybe `:PlugInstall` if needed
Leader key is mapped to `,` 

## Fix rbenv bug 
rbenv install script requires eval `"$(rbenv init -)"` .bash_profile to exist for it to install bundler
But .bash_profile might not exist on the machine yet. 
Best option might be not to use rbenv at all. 

Mkdir on ~/.vim/backup/ and ~/.vim/swp
