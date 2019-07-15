
## Postgres Cluster Configuration

look at patroni configuration

`kubectl exec -it patronidemo-0 -- bash`{{execute}}
`more /home/postgres/patroni.yml`{{execute}}

## Patroni REST API

look at JSON output

`curl 127.0.0.1:8008/patroni`{{execute}}

use patronictl

`patronictl list`{{execute}}
`patronictl show-config`{{execute}}
`
patronictl commands

`patronictl`{{execute}}

switchover

`patronictl switchover`{{execute}}

hit ENTER for the master, then choose a replica
then select "now" then select "y"

`patronictl list`{{execute}}

do the above a few times until all nodes are running

failover

`patronictl failover`{{execute}}

chose a replica, then select "y"

`patronictl list`{{execute}}

do the above a few times until the cluster is restored

`exit`{{execute}}
