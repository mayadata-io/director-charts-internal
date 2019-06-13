# Enterprise-manifest
## Steps to bring up MOD on Packet

### Prerequisite

```
1.Deploy openebs(0.9.0 and above) and create a storagepoolclaim using external disks and create a storageClass name cstor-storage-class.
2.Create a github Oauth app and have the client id,secret and auth enable ready.
3.Create a slack bot and have the client id and client secret ready.
```
### Deploying OpenEBS Director
1. Do git clone of the repositories (https://github.com/mayadata-io/enterprise-manifest.git).
2. cd /enterprise-manifest/1.0.0/RC1
3. Execute deploy.sh script and fill in the required values.

```
    For Example:
    ENTER NAMESPACE for OpenEBS Director
    default
    ENTER URl for OpenEBS Director
    <IP_Address_For_Accessing_The_UI> (This should be one of the Node IPs) 
 Note: The OpenEBS Director requires a Url for which can be any node IP.
    ENTER Enabler
    github_user:107XXXX
    ENTER Client ID
    xxxxa151827ecf0cxxxx
    ENTER Secret
    xxxx42fcaf547f1f593xxxxd66709bfd0d746xxxx
    Email address
    Email PASS
    botclientid
    xxxx25606770.30002626xxxx
    bot client secret
    xxxx93387e8cxxxx7d4358197d9cxxxx
```
4.Installation of MOD will start.

5.Wait till all the MOD pods come up in running state.

6.You can open MOD webconsole in browser with the NodeIp provided in Step 3.

Note:Pods take time to come in running state which you can verify by using watch kubectl get pods.

## Uninstalltion steps:

1. Below command will clean up the MOD installation.

```
kubectl delete -f /enterprise-manifest/1.0.0/RC1/deploy.yaml

kubectl delete pvc cassandra-data-cassandra-0 cassandra-data-cassandra-1 cassandra-data-cassandra-2 data-mysql-0 elasticsearch-logging-elasticsearch-logging-0

kubectl delete jobs -l openebs.io/cas-type=jiva

```

2.Cleaning up the repo:

  a. git reset --hard
  
  b. git clean -fd

3. Delete deploy.yaml file from the directory /enterprise-manifest/1.0.0/RC1/

```
rm deploy.yaml
```

## Steps to bring up MOD on Rancher
 < TO DO >

## Current limitations and notes
 <TO DO >

