Now, let's make the cluster bigger and smaller.

## Grow the Cluster

It's easy to grow a cluster created with an operator. Just make sure
to have an odd number of nodes!

`kubectl apply -f etcd-5-nodes.yaml`{{execute}}

Now watch the pods get created:

`kubectl get pods`{{execute}}

## Shrink the Cluster

You can shrink the cluster similarly:

`kubectl apply -f etcd-cluster.yaml`{{execute}}

Now watch the pods get terminated:

`kubectl get pods`{{execute}}
