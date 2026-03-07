# ~/.zshrc

# Docker autocompletion
autoload -Uz compinit
compinit
source <(docker completion zsh)

eval "$(starship init zsh)"

# Enable colors in terminal
export CLICOLOR=1

# Optional: Set the specific color scheme for directories, symlinks, etc.
# This is a popular, highly readable macOS default scheme.
export LSCOLORS=ExFxBxDxCxegedabagacad

# Alias ls to always use the color flag
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# LS in tree view with ls Deluxe
alias ls='lsd --tree --depth 1'

# Add Tmuxifier to your PATH
export PATH="$HOME/.tmuxifier/bin:$PATH"

# Initialize Tmuxifier
eval "$(tmuxifier init -)"
