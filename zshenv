# ZSH Environment
# contains commands that should be executed whenever a new shell is 
# started (e.g. when opening a new tab or window). This is the place 
# to set aliases, functions, and environmental variables. You will 
# also want to use this file to activate conda environments.

# zshenv is always sourced, even for non-interactive shells.


echo "hello from .zshenv"

function exists() {
  # `command -v` is similar to `which`, but it searches for aliases, builtins, and functions, too.
    command -v $1  >/dev/null 2>&1

    # More explicit version of above line:
    # command -v $1  1>/dev/null 2>/dev/null # `1>` redirects the std output and std error to `/dev/null``
}

# Standard Input/Output/Error
# STDIN (Keyboard)  = 0
# STDOUT (Display)  = 1
# STDERR (Display)  = 2