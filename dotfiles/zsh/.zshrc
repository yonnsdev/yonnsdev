# rust & cargo
export PATH="~/.cargo/bin:$PATH"
source "$HOME/.cargo/env"


# ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"


# python
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"


# llvm
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"


# flutter
export PATH="$HOME/.flutter/bin:$PATH"


# fzf
alias fzd="find . -type d -print | fzf"
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'


# ===================================================================== #
# move zshcompdump to another dir
autoload -Uz compinit
compinit -d ~/.config/zsh/.zcompdump
ZSH_COMPDUMP="${HOME}/.config/zsh/.zcompdump"


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# theme
ZSH_THEME=custom-geoffgarside

# zsh-autosuggest config
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)


# oh-my-zsh plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh


# style
zstyle ':completion:*' list-colors


# Tmux Manage Session -> Open session on start (If not vscode internal terminal)
if [[ "$TERM_PROGRAM" != "vscode" ]]; then

# -> kill detached tmux sessions
tmux list-sessions -F '#{session_attached} #{session_id}' | awk '/^0/{print $2}' | xargs -n 1 tmux kill-session -t
# -> new session
if [ "$TMUX" = "" ]; then tmux; fi
clear

fi

