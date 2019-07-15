Welcome to the Cloud Native Databases Tutorial.

As your first step, we are going to create an Etcd cluster using a
manual statefulset deployment.

## Check Kubernetes

First let's look at the cluster we have:

`kubectl get nodes`{{execute}}

Repeat the above until you have four nodes all showing "Ready".

Now, we don't have any actual storage, which will affect the rest of the
workshop:

`kubectl get pv`{{execute}}

## Check out the Services:

Go to the directory containing the files:

`cd etcd-manual`{{execute}}

Check out the main service for the StatefulSet, and for client connections:

`cat service.yaml`{{execute}}

`cat client-service.yaml`{{execute}}

Now let's create those:

`kubectl create -f service.yaml`{{execute}}

`kubectl create -f client-service.yaml`{{execute}}

Now look at the statefulset file:

`more statefulset.yaml`{{execute}}

And create it:

`kubectl create -f statefulset.yaml`{{execute}}

## Examine the new Etcd cluster

Watch the pods being created.

`kubectl get pods`{{execute}}

Repeat the above until all three etcd Pods are running.

`kubectl logs etcd-0`{{execute}}

`kubectl logs etcd-1`{{execute}}

Now, check out how the pods got distributed:

`kubectl get pod -o=custom-columns=NODE:.spec.nodeName,NAME:.metadata.name`{{execute}}

You can also check out the services:

`kubectl get service`{{execute}}
