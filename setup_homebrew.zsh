#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew setup... >>>\n"

if exists brew; then
    echo "Homebrew is already installed"  
else
    echo "Homebrew is not installed"
    echo "Installing Homebrew..."
    /bin/bash -c "$(\curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#    /bin/bash -c "$(\curl -fsSL https://raw.githubusercontent.com/Homebrew/install)" # variation of above line: copilot's suggestion 
fi

# Install packages from Brewfile ... create Brewfile using command > `brew bundle dump --force --describe` (or alias `bbd`)
# running the following command will install all packages from Brewfile and create Brewfile.lock.json
# make sure Brewfile and Brewfile.lock.json are in the same directory and add Brewfile.lock.json to .gitgnore
brew bundle --verbose # install packages from Brewfile




