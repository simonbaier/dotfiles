#!/usr/bin/env zsh

echo "\n<<< Starting Node setup... >>>\n"
# Node versions are managed with `n`, which isn in the Brewfile.
# See zshrc for N_PREFIX variable an additin to PATH.

# add similar if/then block for n
# add similar if/then block for npm
# add similar if/then block for yarn


if exists node; then
    echo "Node $(node --version) is already installed"  
else
    echo "Node is not installed"
    echo "Installing Node & NPM using n ..."
    # brew install n
    n latest
    n lts
fi

# Install Global NPM Packages
npm install --global firebase-tools # Firebase helps you build and run successful apps
npm install --global typescript # TypeScript is a typed superset of JavaScript that compiles to plain JavaScript.
npm install --global json-server # a full fake REST API with zero coding in less than 30 seconds (seriously)
npm install --global http-server # a simple zero-configuration command-line http server
npm install --global trash-cli # move files to trash instead of deleting them.
# npm install --global @angular/cli
# npm install --global @ionic/cli
echo "Done installing global NPM packages"
npm list --global --depth=0






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




