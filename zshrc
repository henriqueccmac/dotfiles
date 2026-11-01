# Keep the system/user locale; do not force a locale that may not be installed.

# ── History
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS HIST_SAVE_NO_DUPS HIST_REDUCE_BLANKS

# ── Environment
[[ -n $TTY ]] && export GPG_TTY=$TTY

# ── Prompt
PROMPT='%F{201}%n%f@%F{068}%m%f %F{blue}%1~%f %F{240}%*%f %F{241}>%f '

# ── Completions
autoload -Uz compinit
# Perform the security check on each startup; ignore insecure directories.
compinit -i -d "${ZDOTDIR:-$HOME}/.zcompdump"
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/completion"

# ── Aliases (standard Unix commands)
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias rm='rm -i'
