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
currDir=$(pwd)
WITH_HUID="-ou $(stat -c '%u' "${currDir}")"
WITH_HGID="-g $(stat -c '%g' "${currDir}") -o"

# create the user
groupadd ${WITH_HGID} meterian
useradd -g meterian ${WITH_HUID} meterian -d /home/meterian

# creating home dir if it doesn't exist
if [[ ! -d "/home/meterian" ]];
then
    mkdir /home/meterian
fi

#changing home dir group and ownership
chown meterian:meterian /home/meterian

# launch meterian client with the newly created user
export METERIAN_CLI_ARGS=--debug
cp /root/meterian.sh /tmp/meterian.sh
su meterian -c -m /tmp/meterian.sh