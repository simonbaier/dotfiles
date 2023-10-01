#!/usr/bin/env zsh

echo "hello from shebang.zsh"

echo "\n<<< Runing $0 >>>\n"
echo "ZSH_VERSION: $ZSH_VERSION\n"
echo "The current shell is: $(ps $$ -ocomm=)\n"

exists brew && echo "excellent!!!" || echo "bogus"        # check to see if the brew commmand exists
exists nonexistant && echo "excellent" || echo "bogus!!!" # check to see if the nonexistant commmand exists

which exists

sleep 10; echo "done"; # sleep for 10 seconds and then print "done" to the terminal




