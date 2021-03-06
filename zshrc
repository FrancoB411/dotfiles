# Path to your oh-my-zsh installation.
echo "zshrc..."
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="3den"
#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/dotfiles/zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler gem heroku kubectl)

# Set up Git autocomplete
# source ~/.git-completion.bash

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zzz="source ~/.zshrc"
alias ctags="`brew --prefix`/bin/ctags"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# source /usr/local/opt/chruby/share/chruby/chruby.sh
# source /usr/local/opt/chruby/share/chruby/auto.sh
# chruby ruby-2.3.1

# export JAVA_HOME=`/usr/libexec/java_home`

#export EXPERIAN_ETC_HOSTS_TEST=true


eval "$(direnv hook zsh)"

export HOMEBREW_GITHUB_API_TOKEN=95ec8a6f98cd8d2d9fa9d3756256cba9e47cdca5

# source /Users/francobarbeite/dotfiles/tmuxinator.zsh
alias mux='tmuxinator'

# Set command-line editor to be vi
set -o vi

# Set CTRL+R to search command history
bindkey "^R" history-incremental-search-backward

export PATH="/usr/local/sbin:$PATH"

# Send API email alerts only to me
export LOAN_APP_ALERT_EMAIL_TO_ARRAY="[\"franco+alert@liftforward.com\"]"


# Add Anaconda to PATH
# export PATH=~/anaconda/bin:"$PATH"

# mactext support for zsh
eval `/usr/libexec/path_helper -s`

# added by travis gem
# [ -f /Users/francobarbeite/.travis/travis.sh ] && source /Users/francobarbeite/.travis/travis.sh

# suppress autocorrection for
alias 'ember test'='nocorrect ember test'
alias 'ember'='nocorrect ember'
alias 'rspec'='nocorrect rspec'
alias 'spec'='nocorrect spec'
alias 'bundle exec rspec'='nocorrect bundle exec rspec'
alias mix='nocorrect mix'

export NVM_DIR="/Users/francobarbeite/.nvm"
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

# init fzf for fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# launch tensoflow
alias tfo="source ~/workspace/tensorflow/bin/activate"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/francobarbeite/workspace/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/francobarbeite/workspace/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/francobarbeite/workspace/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/francobarbeite/workspace/google-cloud-sdk/completion.zsh.inc'; fi

# Rust package manager
export PATH="/Users/francobarbeite/.cargo/bin:$PATH"

# Anaconda for data science
# export PATH=/usr/local/anaconda3/bin:"$PATH"

# use asdf
source '/usr/local/opt/asdf/asdf.sh'

# source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/chruby/auto.sh

# Loads direnv environment variables if project has a .direnv file
eval "$(direnv hook bash)"

# Print current ruby version in command line prompt
# asdf current ruby | awk -F' ' '{print }'

# Point rbenv to the directory where homebrew installed the binary
export RBENV_ROOT="/usr/local/var/rbenv"

# Initialize rbenv
eval "$(rbenv init -)"

#cargo for rust
export PATH="$HOME/.cargo/bin:$PATH"

# added by travis gem
[ -f /Users/franco/.travis/travis.sh ] && source /Users/franco/.travis/travis.sh

# Enable history in IEX through Erlang(OTP)
export ERL_AFLAGS="-kernel shell_history enabled"

# add flutter sdk
export PATH="$PATH:/usr/local/flutter/bin"
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
