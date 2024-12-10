# Use `ls` with color and formatting options
alias ls="ls -FNh --color"

# Use `less` with preferred options
alias less="less -gINS"

# Use `z` for navigation if available
if command -v zoxide &> /dev/null; then
    alias cd="z"
fi

# Use `nvim` if installed, otherwise fallback to `vim`
if command -v nvim &> /dev/null; then
    alias vim="nvim"
    alias vi="nvim"
fi

# Use `grep`, `fgrep`, and `egrep` with color highlighting
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Use `bat` for `cat` if installed
if command -v bat &> /dev/null; then
    alias cat="bat --paging=never"
fi

# Use `btop` if installed, otherwise fall back to `top` and `htop`
if command -v btop &> /dev/null; then
    alias top="btop"
    alias htop="btop"
fi

# Use `podman` if installed instead of `docker`
if command -v podman &> /dev/null; then
    alias docker="podman"
fi
