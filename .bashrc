# ~/.bashrc — personal shell configuration

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History settings
HISTCONTROL=ignoreboth
HISTSIZE=2000
HISTFILESIZE=10000
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
\n# Custom PATH\nexport PATH="$HOME/.local/bin:$PATH"
\n# Less options\nexport LESS="-R -F -X -i"
\n# Bash completion\nif [ -f /etc/bash_completion ]; then\n    . /etc/bash_completion\nfi
\n# Append to history instead of overwrite\nshopt -s histappend\nPROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
\n# Time stamps for history\nexport HISTTIMEFORMAT="%F %T "
