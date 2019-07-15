#!/bin/bash

kubectl delete etcdcluster etcd
kubectl delete deployment etcd-operator
kubectl delete crd etcdclusters.etcd.database.coreos.com
