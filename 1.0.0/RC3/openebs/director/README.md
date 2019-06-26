Maya On prem
=====================


Introduction
------------

This chart bootstraps MayaOnprem on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites
- Kubernetes 1.11.0+ with RBAC enabled
- iSCSI PV support in the underlying infrastructure
- Create a secret with docker registry credentials and use it during helm install as parameter for value 'dockerSecret'

## Installing MayaOnprem
```
helm install --namespace <yournamespace> openebs/director
```

## Configuration

The following table lists the configurable parameters of the MayaOnprem chart and their default values.

| Parameter                                       | Description                                   | Default                                   |
| ------------------------------------------------|-----------------------------------------------| ------------------------------------------|
| `server.dockerSecret`                           | Docker secret for pulling the images          |      none                                 |
| `server.namespace`                              | Namespace for MayaOnprem installations  |      default                              |
| `server.protocol`                               | http/https protocol for accessing the UI      |      http                                 |
| `server.url`                                    | url/IP address:port for UI                    |      none                                 |
| `server.apiAuthAccessMode`                   | TBD                                           |      unrestricted                         |
| `server.serverDefaultAccessGrant`            | TBD                                           |      true                                 |
| `server.apiUiEnabled`                         | TBD                                           |      true                                 |
| `server.setupName`                             | TBD                                           |      mayaonprem                     |
| `server.apiAuthExternalProviderEnabled`     | TBD                                           |      true                                 |
| `server.apiAuthExternalProviderConfigured`  | TBD                                           |      githubconfig                         |
| `server.apiAuthInternalProviderEnabled`     | TBD                                           |      false                                |
| `server.apiAuthInternalProviderConfigured`  | TBD                                           |      none                                 |
| `server.apiAuthEnabler`                       | TBD                                           |      none                                 |
| `server.apiAuthGithubClientId`              | TBD                                           |      none                                 |
| `server.apiAuthGithubClientSecret`          | TBD                                           |      none                                 |
| `server.apiAuthGoogleClientId`              | TBD                                           |      none                                 |
| `server.apiAuthGoogleClientSecret`          | TBD                                           |      none                                 |
| `server.clusterDomain`                         | TBD                                           |      cluster.local                        |
| `server.featureSubscriptionDisable`           | TBD                                           |      true                                 |
| `server.subscriptionType`                      | TBD                                           |      none                                 |
| `server.featureBillingDisable`                | TBD                                           |      true                                 |
| `server.billingType`                           | TBD                                           |      external                             |
| `server.featureEmailDisable`                  | TBD                                           |      true                                 |
| `server.senderEmailAddress`                    | TBD                                           |      none                                 |
| `server.senderEmailPassword`                  | TBD                                           |      none                                 |
| `server.featureDocsDisable`                   | TBD                                           |      false                                |
| `server.docsUrl`                               | TBD                                           |      https://docs.mayaonline.io           |
| `server.featureChatBotDisable`                | TBD                                           |      true                                 |
| `server.slackConfigBotClientId`             | TBD                                           |      none                                 |
| `server.slackConfigBotClientSecret`         | TBD                                           |      none                                 |
| `server.slackNotificationWelcomeMessage`     | TBD                                           |      none                                 |
| `server.featureKialiDisable`                  | TBD                                           |      true                                 |
| `server.analyticsGoogleCode`                  | TBD                                           |      none                                 |
|                                                 |                                               |                                           |
| `mysql.storageClass`                            | TBD                                           |      openebs-jiva-default                 |
|                                                 |                                               |                                           |
| `elasticSearch.storageClass`                    | TBD                                           |      openebs-hostpath                     |
| `elasticSearch.replicas`                        | TBD                                           |      1                                    |
|                                                 |                                               |                                           |
| `cassandra.storageClass`                        | TBD                                           |      openebs-hostpath                     |
| `cassandra.replicas`                            | TBD                                           |      1                                    |
|                                                 |                                               |                                           |
| `mayaStore.storageClass`                        | TBD                                           |      cstor-storage-class                  |
|                                                 |                                               |                                           |
| `grafana.storageClass`                          | TBD                                           |      cstor-storage-class                  |
|                                                 |                                               |                                           |
| `cortex.replicationFactor`                      | TBD                                           |      1                                    |
| `cortex.timeout`                                | TBD                                           |      20s                                  |
|                                                 |                                               |                                           |
| `alertStore.replicationFactor`                  | TBD                                           |      1                                    |
-----------------------------------------------------------------------------------------------------------------------------------------------


Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```shell
helm install -f values.yaml openebs/director
```

> **Tip**: You can use the default [values.yaml](values.yaml)
