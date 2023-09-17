# Notes: https://github.com/simonbaier/notes/blob/master/zshrc.md  


# SET VARIABLES
# syntax highlighting for `man` pages - re-enable if colors contrast well with iterm theme settings 
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BAT_CONFIG_PATH="/Users/simon/.config/bat/config"


# CHANGE ZSH OPTIONS


# SET ALIASES
alias ll="ls -laF"
alias jn="jupyter notebook"
alias re="source ~/.zshrc"
alias gs="git status"
alias ga="git add ."
alias gp="git push"
alias c="clear"
alias x="exit"
alias ccli="chrome-cli"




# CUSTOMIZE PROMPT
PROMPT='
%L %F{yellow}%~%f %B%F{white}%#%f%b '
RPROMPT='%*'

# ADD LOCATIONS TO $PATH VARIABLE
## Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" 


# WRITE FUNTIONS
# a function that combines mkdir and cd
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# USE ZSH PLUGINS


# OTHER CONFIGS




# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussel"
# ZSH_THEME="jonathan"
# ZSH_THEME="eastwood"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# >> PLUGINS >>
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# NOTE: zsh-syntax-highlighting must be the last plugin sourced.
plugins=(urltools zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh   # all oh-m-zsh config settings must appear before it is sourced on this line

# SET ALIASES
alias ll="ls -laF"
# alias jn="jupyter notebook"
# alias reload="source ~/.zshrc"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/simon/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/simon/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/simon/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/simon/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

