#!/bin/bash

echo "~~~ Printing current environment variables that come within the docker image"
printenv

echo
echo "~~~ Printing \$PATH"
echo $PATH

echo
echo "~~~ Printing which java output"
which java

echo "~~~ Printing current dir contents"
ls -lat
