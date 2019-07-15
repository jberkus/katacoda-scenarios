#!/bin/bash

kubectl delete -f ~/etcd-operator/example-etcd-cluster.yaml
kubectl delete -f ~/etcd-operator/deployment.yaml
kubectl delete -f ~/etcd-operator/cluster-role-binding.yaml
kubectl delete -f ~/etcd-operator/cluster-role.yaml
