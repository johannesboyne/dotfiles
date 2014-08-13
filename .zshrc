# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
alias grunt='nocorrect grunt' 
alias restart_vb='sudo /Library/StartupItems/VirtualBox/VirtualBox restart'
alias gitl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches --color"
alias addjspe='git add cockpit/src/Shopmacher/App/PageEditorBundle/Resources/public/js/'
alias tig='/Users/jb/bin/tig'
alias disable_spotlight='sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias reenable_spotlight='sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vus='vagrant up && vagrant ssh'

# Manta
export MANTA_URL=https://us-east.manta.joyent.com
export MANTA_USER=johannesboyne
export MANTA_KEY_ID=d2:2d:ca:f8:d4:e8:25:8e:4f:21:43:dd:f8:0f:fa:08

export GOROOT=/usr/local/go
export PATH=/Users/jb/Developing/mongodb-local-installation/bin:$PATH
export PATH=/Users/jb/.local/bin:$PATH
export GOPATH=/Users/jb/Developing/externalgocode/
export PATH=/Users/jb/Developing/externalgocode/:$PATH

ulimit -n 1024

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/MacGPG2/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH="$PATH:/Users/jb/Developing/elixir/bin"

export GOPATH=/Users/jb/Developing/externalgocode/

#ssh keys
#ssh-add ~/.ssh/id_rsa_zwtg &>/dev/null
