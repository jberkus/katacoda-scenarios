Creating the Etcd Operator requires installing a bunch of objects
into your Kubernetes cluster.

## Examine the Files

There's several files to install here:

`cd etcd-operator`{{execute}}

`ls`{{execute}}

`more create_role.sh`{{execute}}

`more deployment.yaml`{{execute}}

## Install the CRD

This requires setting up a custom RBAC profile, followed by
creating an extension to the deployments object ... which also
runs an operator pod.

`/bin/bash create_role.sh`{{execute}}

`kubectl create -f deployment.yaml`{{execute}}

This should create a CRD

`kubectl get crd`{{execute}}

## Create a Cluster

Now, you're ready to create your first etcd cluster:

`kubectl create -f etcd-cluster.yaml`{{execute}}

`kubectl get pods`{{execute}}

Repeat the above until three etcd pods are created.

You can also check out the created services:

`kubectl get service`{{execute}}
