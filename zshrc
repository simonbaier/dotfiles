# Notes: https://github.com/simonbaier/notes/blob/master/zshrc.md  
# zshrc does not load interactive shell config files (.zshrc, .zshenv, .zprofile, .zlogin) when invoked as a login shell.
# zshenv is always sourced, even for non-interactive shells.

echo "hello from .zshrc"

# SET VARIABLES
# syntax highlighting for `man` pages - re-enable if colors contrast well with iterm theme settings 
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
# export BAT_CONFIG_PATH="/Users/simon/.config/bat/config"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"


# SET ALIASES
alias ll="ls -laF"
alias jn="jupyter notebook"
alias re="source ~/.zshrc"
alias src="source ~/.zshrc"
alias gs="git status"
alias ga="git add ."
alias gp="git push"
alias c="clear"
alias x="exit"
alias ccli="chrome-cli"
alias h="history"
alias exa="exa -laFh --git"
alias bbd="brew bundle dump --force --describe"
alias trail='<<<${(F)path}' # print all directories in $PATH variable  -(using "parameter expansion" - https://zsh.sourceforge.io/Doc/Release/Expansion.html#Parameter-Expansion)
alias rm=trash # move files to system trash instead of permanent deletion


# CUSTOMIZE PROMPT
PROMPT='
%L %F{yellow}%~%f %B%F{white}%#%f%b '
RPROMPT='%*'


# ADD LOCATIONS TO $path Array
# the following syntax removes duplicates in $PATH variable
# lowercase $path array automatically translates to an unppercase string version $PATH
typeset -U path # remove duplicates in $PATH variable
path=( # lowercase path returns an array of all directories in $PATH variable
    "$N_PREFIX/bin" # add n to $path
    $path           # add all directories in $PATH variable to $path
    "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)


# WRITE FUNTIONS
# a function that combines mkdir and cd
function mkcd() {
  mkdir -p "$@" && cd "$_";
}


# USE ZSH PLUGINS

 
# OTHER CONFIGS


# OH-MY-ZSH CONFIGS
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussel" # Set name of the theme to load. See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes# Set name of the theme to load. See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
HIST_STAMPS="mm/dd/yyyy"


# >> PLUGINS >>
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# NOTE: zsh-syntax-highlighting must be the last plugin sourced.
plugins=(urltools zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh   # all oh-m-zsh config settings must appear before it is sourced on this line


# CONDA CONFIGS
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

