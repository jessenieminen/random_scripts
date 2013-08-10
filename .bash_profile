if [ -f ~/.bashrc ]; then 
    source ~/.bashrc 
fi

export EDITOR=nano

#Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

PS1='\[\033[0;33m\]\u\[\033[0m\]@\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]\$ '

#Aliases

alias ls='ls -G'
alias ll='ls -larth'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias kosh='ssh jjniemi1@kosh.aalto.fi'
alias storymill='ssh jjniemi1@storymill.niksula.hut.fi'

alias irc='sh ~/bin/irc.sh'
alias sshdrupal='sh ~/bin/sshdrupal.sh'

alias photoshop='open -a Adobe\ Photoshop\ CS6'

alias grep_port='sudo lsof -n -i4TCP:$PORT | grep LISTEN'

alias theron='sh ~/bin/theron.sh'
alias keltsu='sh ~/bin/keltsu.sh'
alias taffa='sh ~/bin/taffa.sh'
alias tuas='sh ~/bin/tuas.sh'

alias gg='/usr/local/git/libexec/git-core/git-gui'
alias gf='git fetch'
alias grb='git rebase origin/master'
alias grf='git rebase origin/fastorm-sc'
alias gs='git status'
alias gitm='git fetch ; git stash ; git rebase origin/master ; git stash pop'
alias gitf='git fetch ; git stash ; git rebase origin/fastorm-sc ; git stash pop'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
