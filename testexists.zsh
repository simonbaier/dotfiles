#!/usr/bin/env zsh

# exists $1 && echo "excellent" || echo "bogus"

#echo "hello from testexists.zsh"
echo "\n<<< Runing $0 >>>\n"

exists brew && echo "excellent!!!" || echo "bogus"        # check to see if the brew commmand exists
exists nonexistant && echo "excellent" || echo "bogus!!!" # check to see if the nonexistant commmand exists

which exists

