starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    macchina
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/theabhirath/miniforge3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /Users/theabhirath/.ghcup/bin # ghcup-env
