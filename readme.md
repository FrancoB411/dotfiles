# Dotfiles

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

