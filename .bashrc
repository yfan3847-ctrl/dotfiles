# ~/.bashrc — personal shell configuration

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History settings
HISTCONTROL=ignoreboth
HISTSIZE=2000
HISTFILESIZE=4000
shopt -s histappend

# Check window size after each command
shopt -s checkwinsize

# Load aliases if present
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Load functions if present
if [ -f ~/.functions ]; then
    . ~/.functions
fi
