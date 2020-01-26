# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/rodger/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Path to NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Path to SKDMAN
export SDKMAN_DIR="/Users/rodger/.sdkman"
[[ -s "/Users/rodger/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rodger/.sdkman/bin/sdkman-init.sh"

# Path to EXPO
export PATH="$(yarn global bin):$PATH"

# Theme to load --- if set to "random", it will
ZSH_THEME="spaceship"

# Load plugins
# Plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(
    git 
    docker 
    zsh-syntax-highlighting 
    zsh-completions 
    zsh-autosuggestions
)
autoload -U compinit && compinit

# Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
# End of Zplugin installer's chunk

# Spacechip theme config
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
# End of Spacechip theme config

# ZSH alias 
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Docker alias
alias dkps="docker ps"
alias dkst="docker stats"
alias dkpsa="docker ps -a"
alias dkimgs="docker images"
alias dkcpup="docker-compose up -d"
alias dkcpdown="docker-compose down"
alias dkcpstart="docker-compose start"
alias dkcpstop="docker-compose stop"

# Postgres Container alias
alias postgres="docker run --rm --name pg-docker -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=d0ck3r -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres"

# MySQL Container alias
alias mysql="docker run --rm --name mysql-docker -p 3306:3306 -v $HOME/docker/volumes/mysql:/var/lib/mysql -e MYSQL_USER=docker -e MYSQL_PASSWORD=d0ck3r -d mysql:latest"

#Git alias
alias clone="git clone"