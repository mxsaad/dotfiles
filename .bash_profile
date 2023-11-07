# ~/.bash_profile

# terminal colors
export CLICOLOR=1

# homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# GNU coreutils
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# personal binaries
export PATH="~/bin:$PATH"

# bash auto-completion@2
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# ~/.bash_aliases
if [ -e $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

# starship
eval "$(starship init bash)"
