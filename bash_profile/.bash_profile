# ~/.bash_profile

# terminal colors
export CLICOLOR=1

# homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# GNU coreutils
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# personal binaries
export PATH="~/bin:$PATH"

# default editor
export EDITOR="/opt/homebrew/bin/nvim"

# bash auto-completion@2
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# ~/.bash_aliases
if [ -e $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

# zoxide
eval "$(zoxide init bash)"

# starship
eval "$(starship init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
