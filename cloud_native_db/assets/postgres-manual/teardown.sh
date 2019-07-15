#!/bin/bash

# delete manual patroni cluster and shell
kubectl delete -f patroni_k8s.yaml
kubectl delete -f pg-shell.yaml

# now look at configmaps, and delete them.
kubectl delete configmap patronidemo-leader
kubectl delete configmap patronidemo-config
