# ZSH Environment
# contains commands that should be executed whenever a new shell is 
# started (e.g. when opening a new tab or window). This is the place 
# to set aliases, functions, and environmental variables. You will 
# also want to use this file to activate conda environments.

# zshenv is always sourced, even for non-interactive shells.


echo "hello from .zshenv"

function exists() {
    command -v "$1" >/dev/null 2>&1
}

