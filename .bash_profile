# External files
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_functions ] && . ~/.bash_functions
[ -f ~/.bash_functions ] && . ~/.bash_ps1

# OS specific files
[ $(uname -s) == "Darwin" ] && source ~/.bash_profile_osx

# Paths
export PATH=$PATH:/usr/local/bin:/usr/local/sbin

# Various settings
export EDITOR="nano"
export GREP_OPTIONS='--color=auto'
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:ll:la:cd:..:cd ..:pwd:"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Enable local override
[ -f ~/.bash_profile_local ] && . ~/.bash_profile_local