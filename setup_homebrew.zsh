#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew setup... >>>\n"

/bin/bash -c "$(\curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install packages from Brewfile ... create Brewfile using command > `brew bundle list --all`
# running the following command will install all packages from Brewfile and create Brewfile.lock.json
# make sure Brewfile and Brewfile.lock.json are in the same directory and add Brewfile.lock.json to .gitgnore
brew bundle --verbose  




