#!/bin/bash
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/metrics-server-amd64:v0.3.6
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/metrics-server-amd64:v0.3.6 k8s.gcr.io/metrics-server-amd64:v0.3.6

basepath=$(cd `dirname $0`; pwd)
kubectl apply -f $basepath/