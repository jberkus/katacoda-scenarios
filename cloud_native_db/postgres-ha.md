## PostgreSQL High Availability

trigger a failover

`kubectl delete pod patronidemo-0`{{execute}}

watch roles change

`kubectl get pods -L role`{{execute}}

repeat above a few times

check out logs and leader config

`kubectl logs patronidemo-1`{{execute}}
`kubectl describe configmap patronidemo-leader`{{execute}}

feel free to repeat the above a few times
