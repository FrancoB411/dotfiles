# Dotfiles

# Setting up a new workstation
 
 Our new machine setup script is based on strap https://github.com/mikemcquaid/strap. It assumes you don't have git or any tooling installed and that you've already forked [our default dotfiles repo](https://github.com/mikegrassotti/dotfiles) to become your dotfiles repo. 
 
 1. Fork https://github.com/mikegrassotti/dotfiles unless you have your own dotfiles. If you do STOP and let's figure this out.
 1. Review
 1. Visit https://osx-strap.herokuapp.com/ and use this to generate a strap script customized for your github user. 
 1. run the script
 ```
 cd Downloads
 bash bin/strap.sh
 ```

This script will automatically download your dotfiles repo then run it's script/setup.sh script.
It will also download and run your brew bundle file if you have one in /{gituser}/homebrew-brewfile/Brewfile

Notes and issues
 - had to remove git credentials from the osx keychain
 

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
````

## Using vim...

Start vim - plugins should install automagically. 
To see if it worked, run `:PlugStatus` and maybe `:PlugInstall` if needed
Leader key is mapped to `,` 

