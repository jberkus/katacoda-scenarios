## Connecting

look at the pg-shell container

`more pg-shell.yaml`{{execute}}

# deploy it and log into a shell

`kubectl create -f pg-shell.yaml`{{execute}}

`kubectl exec -it pg-shell -- bash`{{execute}}

connect to the cluster master

`psql -h patronidemo`{{execute}}

`select pg_is_in_recovery();`{{execute}}

`create table test ( test text );`{{execute}}

`\q`{{execute}}

connect to the load-balancing RO connection

`psql -h patronidemo-ro`{{execute}}

`select pg_is_in_recovery();`{{execute}}

# you may have to do the above a couple times to get a replica

`\d test`{{execute}}

`\q`{{execute}}

<!-- # connect to a specific node

`exit`{{execute}}
`kubectl get pods -L role`{{execute}}
`kubectl exec -it pg-shell -- bash`{{execute}}
`psql -h patronidemo-1.patronidemo`{{execute}}
`select pg_is_in_recovery();`{{execute}}
`\q`{{execute}}
`exit`{{execute}} -->
