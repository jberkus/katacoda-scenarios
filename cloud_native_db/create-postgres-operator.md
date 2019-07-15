We're going to manage PostgreSQL using an operator.

## Install the prerequisites

`cd postgres-operator`{{execute}}

Now look at the configmap.  This governs the behavior of the
*operator* (as opposed to Postgres, we'll get to that).

`more configmap.yaml`{{execute}}

`kubectl create -f configmap.yaml`{{execute}}

Like usual, we have to create some custom RBAC accounts:

`kubectl create -f operator-service-account-rbac.yaml`{{execute}}

## Install the Operator

This is a more recent operator, so the installation is more straightforwards"

`kubectl create -f postgres-operator.yaml`{{execute}}

Now watch for the CRD to be created, it'll take a bit:

`kubectl get crd`{{execute}}
