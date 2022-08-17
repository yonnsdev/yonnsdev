# ALIASES
alias vim=nvim


# move zshcompdump to another dir
autoload -Uz compinit
compinit -d ~/.config/zsh/.zcompdump
ZSH_COMPDUMP="${HOME}/.config/zsh/.zcompdump"


# ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"


# python
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"


# llvm
export PATH="/opt/homebrew/Cellar/llvm/14.0.6_1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"


# Path to your oh-my-zsh installation.
export ZSH="/Users/choidygks/.oh-my-zsh"


# Colors
ZSH_THEME="geoffgarside"


# oh-my-zsh plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh


# zsh-autosuggest config
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)


# style
zstyle ':completion:*' list-colors


# Tmux Manage Session -> Open session on start (If not vscode internal terminal)
if [[ "$TERM_PROGRAM" != "vscode" ]]; then

# -> kill detached tmux sessions
tmux list-sessions -F '#{session_attached} #{session_id}' | awk '/^0/{print $2}' | xargs -n 1 tmux kill-session -t
# -> new session
if [ "$TMUX" = "" ]; then tmux; fi

fi