# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# Plugins
plugins=(git vi-mode rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/rue/.rbenv/shims:/Users/rue/node_modules/.bin:/Users/rue/.rbenv/versions/1.9.3-p194/bin:/Users/rue/bin:/usr/local/bin:/usr/local/share/npm/bin:/Library/Java/JavaVirtualMachines/1.7.0u.jdk/Contents/Home//bin:/Users/rue/.rbenv/shims:/Users/rue/node_modules/.bin:/Users/rue/.rbenv/versions/1.9.3-p194/bin:/Users/rue/bin:/usr/local/bin:/usr/local/share/npm/bin:/Library/Java/JavaVirtualMachines/1.7.0u.jdk/Contents/Home//bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

# VIm stuffs.
export EDITOR="vim"
bindkey -v 

bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward  

# cd without cd
setopt AUTO_CD

# Fuck the police
unsetopt correct_all

# Stupid ri
export RI=--no-pager

# Goodbye irb
alias irb=pry

# Yay gems, thanks jc00ke
alias gem+="gem install"
alias gem-="gem uninstall"

# Git stuff
alias ga="git add"
alias gb="git branch"
alias gba="git branch -a"
alias gc="git commit -v"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gd="git diff"
alias gf="git fetch"
alias gl="git log"
alias gm="git merge"
alias gp="git push origin HEAD"
alias gr="git rm"
alias gs="git status"
alias gu="git pull --rebase"

# Regular aliases
alias ll="ls -lhaF"
alias la="ls -a"

# I can never remember which way these are
lnsft () {
  command ln -s "$1" "$2"
}

alias ..="cd .."
alias ...="cd ../.."
