export EDITOR=vim

# Cosmopolitan that I am.
export LC_ALL=en_US.UTF-8


# JDK 7
export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0u.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH

# Homebrew!
export PATH=/Users/rue/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH

# Node
export NODE_HOME=/Users/rue/node_modules
export PATH=$NODE_HOME/.bin:$PATH

# colors for ls, etc.
#              dir soc exe chr sgi w-s
#               |sym|pip|blk|sui|w+s|
#               | | | | | | | | | | |
#export LSCOLORS=gaaGbacadaBaHaDaGaEaEa

# Default
export LSCOLORS=exfxcxdxbxegedabagacad
export CLICOLOR=1


# Git completion and branch name info
source ~/.git-completion.bash

PR_BROWN="\[\033[33m\]"
PR_LTGREY="\[\033[37m\]"
PR_CLEAR="\[\033[0m\]"

PS1="$PR_BROWN\t $PR_LTGREY@\h \w:\$(__git_ps1 "%s") \$(rvm-prompt) $PR_CLEAR> "
PS2="$PR_LTGREY ... $PR_CLEAR> "

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

alias ssht="ssh -p3367 tail.kittensoft.org"

# Stuff uppies
pic () {
  command scp -P3367 "$1" root@tail.kittensoft.org:/var/www/mypi.cx/"$2"
}


# Autojump import
if [ -f `brew --prefix`/etc/autojump ]; then
    . `brew --prefix`/etc/autojump
fi

[[ -s "/Users/rue/.rvm/scripts/rvm" ]] && source "/Users/rue/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
