#!/bin/bash

kubectl delete -f ~/etcd-manual/statefulset.yaml
kubectl delete -f ~/etcd-manual/service.yaml
kubectl delete -f ~/etcd-manual/pdb.yaml
