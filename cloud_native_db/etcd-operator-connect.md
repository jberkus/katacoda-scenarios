Of course clients need to be able to connect to etcd

## Emulate a client connection

First, look at the services:

`kubectl get svc`{{execute}}

We're going to start an etcd container so that we can pretend that
it's a client application.

`kubectl run --rm -it etcdctl --image=quay.io/coreos/etcd /bin/sh`

You connect to the client service by name:

`etcdctl --endpoints="http://etcd-client:2379" get etcd-deployment`

You can try other Etcd commands there.
