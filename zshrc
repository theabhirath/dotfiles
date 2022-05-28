# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/theabhirath/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/theabhirath/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/theabhirath/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/theabhirath/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/theabhirath/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# syntax highlighting for zsh
source /Users/theabhirath/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export CLICOLOR=1

# coloured man pages
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		man "$@"
}

export JULIA_NUM_THREADS=4

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv
eval "$(rbenv init - zsh)"

# starship prompt
eval "$(starship init zsh)"
