# --- PATH setup ---
export PATH="/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="$PATH:/Applications/PyCharm.app/Contents/MacOS:/Applications/IntelliJ IDEA.app/Contents/MacOS"

# --- Locale ---
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# --- Environment variables ---
export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"
export HOMEBREW_NO_AUTO_UPDATE=1
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export LS_COLORS="gxBxhxDxfxhxhxhxhxcxcx"

# --- nvm (Node Version Manager) ---
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# --- Prompt ---
PROMPT='%F{201}%n%f@%F{068}%m%f %F{blue}%1~%f %F{241}%#%f '

# --- Plugins (lazy-loaded) ---
autoload -Uz compinit && compinit

# load autosuggestions & highlighting only in interactive shells
if [[ $- == *i* ]]; then
  ZSH_PLUGIN_DIR="$(brew --prefix)/share"
  [[ -f "$ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && \
    source "$ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
  [[ -f "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && \
    source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# --- Aliases ---
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -aG'
alias lla='ls -laG'
alias python='python3'
alias py='python3'
alias dns-ls='sudo lsof -i :53'
alias dns-off='sudo launchctl unload /Library/LaunchDaemons/net.dnsmasq.plist; sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias dns-on='sudo launchctl load /Library/LaunchDaemons/net.dnsmasq.plist; sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# --- Conda (lazy init for speed) ---
_conda_init() {
  __conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  elif [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
    . "/opt/anaconda3/etc/profile.d/conda.sh"
  else
    export PATH="/opt/anaconda3/bin:$PATH"
  fi
  unset __conda_setup
}
alias conda-init='_conda_init'
