#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew setup... >>>\n"

/bin/bash -c "$(\curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install httpie
brew install bat

# brew install --cask google-chrome
# brew install --cask visual-studio-code
# brew install --cask iterm2
