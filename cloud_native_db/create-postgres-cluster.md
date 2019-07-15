
## Create PostgreSQL Cluster

Now it's time to create a PostgreSQL cluster as a statefulset:

`cd postgres-manual`{{execute}}

`kubectl create -f patroni_k8s.yaml`{{execute}}

Watch for the nodes to come up:

`kubectl get pods -L role`{{execute}}

You can also watch the logs for the cluster:

`kubectl logs patronidemo-0`{{execute}}

And check out the services:

`kubectl get services`{{execute}}

There's also a few configmaps:

`kubectl get configmaps`{{execute}}
`kubectl describe configmap patronidemo-config`{{execute}}
`kubectl describe configmap patronidemo-leader`{{execute}}

check out secrets

`kubectl get secrets`{{execute}}
