#!/bin/bash

echo ENTER URl of Deployment
read URL
echo $URL

echo ENTER your github Auth app details
echo Enetr Enabler  
read AuthENABLER
echo ENTER Client ID
read GITHUBCLIENTID
echo ENTER Secret
read GITHUBCLIENTSECRET

echo -e "$AuthENABLER\n$GITHUBCLIENTID\n$GITHUBCLIENTSECRET"

echo ENTER email to use by server

echo Email address  
read EMAILADRESS
echo Email PASS
read EMAILPASS

echo -e $EMAILADRESS \n $EMAILPASS

echo ENTER Your slack bot details

echo botclientid
read botclientid
echo bot client secret
read botclientsecret

#export $botclientid


#git clone git@github.com:atulabhi/maya-hai-sab.git

eval "echo \"$(cat template.yml)\" > deploy.yaml"




