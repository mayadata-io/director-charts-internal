#!/bin/bash
echo "ENTER NAMESPACE for OpenEBS Director"
read NAMESPACE
echo $NAMESPACE

sed -ri 's/(variablename)/'$NAMESPACE'/' "operator.yaml"

echo "ENTER URl for OpenEBS Director"
read URL
echo $URL

echo ENTER your github Auth app details
echo ENTER Enabler  
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

eval "echo \"$(cat template.yml)\" > maya-config.yaml"
sed -ri 's/(variablename)/'$NAMESPACE'/' "maya-config.yaml";
kubectl apply -f maya-config.yaml;

for migration in $(ls migrations)
do 
  echo $migration | grep ".sh"; 
  if [ $? == 0 ]; then 
    echo $migration;
    bash migrations/$migration;
  else
    echo "performing migration $migration ...";
    sed -ri 's/(variablename)/'$NAMESPACE'/' "migrations/$migration";
    kubectl apply -f migrations/$migration;
    sleep 4;
    echo "done migration $migration.";
  fi
done

