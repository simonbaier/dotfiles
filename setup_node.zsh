#!/usr/bin/env zsh

echo "\n<<< Starting Node setup... >>>\n"
# Node versions are managed with `n`, which isn in the Brewfile.
# See zshrc for N_PREFIX variable an additin to PATH.

if exists node; then
    echo "Node $(node --version) is already installed"  
else
    echo "Node is not installed"
    echo "Installing Node & NPM using n ..."
    brew install n
    n latest
    n lts
fi

# if exists n; then
#     echo "n $(n --version) is already installed"  
# else
#     echo "n is not installed"
#     echo "Installing n..."
#     npm install -g n
# fi

# if exists npm; then
#     echo "npm $(npm --version) is already installed"  
# else
#     echo "npm is not installed"
#     echo "Installing npm..."
#     brew install npm
# fi

# if exists yarn; then
#     echo "yarn is already installed"  
# else
#     echo "yarn is not installed"
#     echo "Installing yarn..."
#     brew install yarn
# fi




