# ~/.zshrc

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
export PATH="$HOME/.local/bin:$PATH"
