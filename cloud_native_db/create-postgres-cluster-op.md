
## Create PostgreSQL Cluster

Now we can create our cluster using a "manifest":

`more minimal-postgres-manifest.yaml`{{execute}}

`kubectl create -f minimal-postgres-manifest.yaml`{{execute}}

Watch for the nodes to come up:

`kubectl get pods -L spilo-role`{{execute}}
