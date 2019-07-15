Like in the StatefulSet deployment, we're going to demonstrate an HA cycle.

## Add a Key to the DB

`kubectl get pods`{{execute}}

Now, pick one pod and swap its name in here:

`kubectl exec -it POD_NAME_HERE /bin/sh`{{execute}}

And set a key:

`etcdctl set etcd-deployment manual`{{execute}}

`etcdctl get etcd-deployment`{{execute}}

`exit`{{execute}}

## Kill off a pod

Now we're going to kill that same pod:

`kubectl delete pod POD_NAME_HERE`{{execute}}

Now check the pods several times:

`kubectl get pods`{{execute}}

You'll see that it got replaced, but by a pod of a different name.

We can log into a pod and check that our data is preserved:

`kubectl exec -it POD_NAME_HERE /bin/sh`{{execute}}

`etcdctl get etcd-deployment`{{execute}}

`exit`{{execute}}
