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
echo

# for test with different github actions 
echo "~~~ Verifying that we are within the right image"
# here print anything you know to be present in the docker github action image
cat /root/version.txt

# testing meterian cli
export METERIAN_CLI_ARGS=--debug
/root/meterian.sh