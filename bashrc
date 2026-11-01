# Interactive shells only.
case $- in
  *i*) ;;
  *) return ;;
esac

# Keep the system/user locale and PATH.

# ── History
HISTSIZE=10000
HISTFILESIZE=10000
HISTFILE=~/.bash_history
HISTCONTROL=ignoredups:erasedups
shopt -s histappend

# ── Environment
if [[ -t 0 ]]; then
  GPG_TTY=$(tty)
  export GPG_TTY
fi

# ── Prompt (basic ANSI colors; no extra tools)
if [[ $TERM == dumb || -z $TERM ]]; then
  PS1='\u@\h \W \t > '
else
  PS1='\[\e[35m\]\u\[\e[0m\]@\[\e[36m\]\h\[\e[0m\] \[\e[34m\]\W\[\e[0m\] \[\e[90m\]\t\[\e[0m\] > '
fi

# ── Completions (Bash built-ins)
bind 'set completion-ignore-case off'
bind 'set show-all-if-ambiguous on'

# ── Aliases (standard Unix commands)
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias rm='rm -i'
