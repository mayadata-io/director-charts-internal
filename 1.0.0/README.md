# Enterprise-manifest
# Pre-Requisit
1.Create deploy openebs and create a storageClass name cstor-storage-class
2.Create a github Oauth app and have the client id,secret and auth enable ready
3.Create a slack bot and have the client id and client secret ready.

# Deploying OpenEBS Director
The OpenEBS Director requires a Url for which can be any node IP.

Run deploy.sh and fill in the reqired values and OpenEBS Director will be installed on your baremetal kubernetes cluster. 

Pods take time to come in running state which you can verify by using watch kubectl get po.
