#!/usr/bin/env zsh

echo "\n<<< Starting Node setup... >>>\n"
# Node versions are managed with `n`, which isn in the Brewfile.
# See zshrc for N_PREFIX variable and addition to $path array.

# add similar if/then block for n, npm

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
npm install --global yarn # Yarn is a package manager that doubles down as project manager.
npm install --global firebase-tools # Firebase helps you build and run successful apps
npm install --global typescript # TypeScript is a typed superset of JavaScript that compiles to plain JavaScript.
npm install --global json-server # a full fake REST API with zero coding in less than 30 seconds (seriously)
npm install --global http-server # a simple zero-configuration command-line http server
npm install --global trash-cli # move files to trash instead of deleting them.

npm list --global --depth=0 # list global NPM packages

echo "Done installing global NPM packages"
