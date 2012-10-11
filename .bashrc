export EDITOR=vim

# Cosmopolitan that I am.
export LC_ALL=en_US.UTF-8


# JDK 7
export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0u.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH

# Homebrew!
export PATH=/Users/rue/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH

# rbenv
export PATH=/Users/rue/.rbenv/versions/1.9.3-p194/bin/:$PATH

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
source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh

PR_BROWN="\[\033[33m\]"
PR_LTGREY="\[\033[37m\]"
PR_CLEAR="\[\033[0m\]"

PS1="$PR_BROWN\t $PR_LTGREY@\h \w:\$(__git_ps1 "%s") $PR_CLEAR> "
PS2="$PR_LTGREY ... $PR_CLEAR> "

# Stupid ri
export RI=--no-pager

# Make this thing a little easier
alias resource="source ~/.bashrc"

# Goodbye irb
alias irb=pry

# Yay gems, thanks jc00ke
alias gem+="gem install"
alias gem-="gem uninstall"

alias brew+="brew install"
alias brew-="brew uninstall"

# Git stuff
alias ga="git add"
alias gb="git branch"
alias gbr="git branch -r"
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
alias gsw="git show"


# Regular aliases
alias ll="ls -lhaF"
alias la="ls -a"

# Netstat is completely useless on OSX
alias netlisteners="lsof -i -P | ag LISTEN"

# I can never remember which way these are
lnsft () {
  command ln -s "$1" "$2"
}

alias ..="cd .."
alias ...="cd ../.."

alias ssht="ssh -p3367 tail.kittensoft.org"

alias mannerheim="ssh ssh.reaktor.fi"

# Autojump import
if [ -f `brew --prefix`/etc/autojump ]; then
    . `brew --prefix`/etc/autojump
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

