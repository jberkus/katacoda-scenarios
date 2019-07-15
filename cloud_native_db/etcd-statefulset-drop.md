Now, let's try writing some data:

## Try out connecting to Etcd

Log into one of the etcd nodes in order to write some data:

`kubectl exec -it etcd-1 /bin/sh`{{execute}}

`etcdctl set etcd-deployment manual`{{execute}}

`etcdctl get etcd-deployment`{{execute}}

`exit`{{execute}}

## Etcd Failover

Let's try killing an Etcd pod and check that the cluster survives:

`kubectl get pods`{{execute}}

`kubectl delete --force etcd-2 `{{execute}}

`kubectl get pods`{{execute}}

Repeat the above until the killed pod comes back.

Let's check that the data is still there:

`kubectl exec -it etcd-1 /bin/sh`{{execute}}

`etcdctl get etcd-deployment`{{execute}}

`exit`{{execute}}

## Remove the Etcd Cluster

We need to remove this cluster so that we can do further exercises.  This Kubernetes cluster is very low on resources.

`/bin/bash teardown.sh`{{execute}}

`kubectl get pods`{{execute}}

`cd ..`{{execute}}
