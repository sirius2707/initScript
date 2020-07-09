#!/bin/bash

echo "alias k='kubectl'" >> ~/.bashrc
echo "alias kg='kubectl -n iot-gateway'" >> ~/.bashrc
echo "alias kw='kubectl -n iot-workloads'" >> ~/.bashrc
echo "alias ka='kubectl -A'" >> ~/.bashrc

echo "alias psql=\"k exec -n iot-gateway -it ii-se-postgresql-0 -- sh -c 'PGPASSWORD=123456 psql database'\"" >> ~/.bashrc
echo "alias redis-cli=\"k exec -n iot-gateway -it ii-se-redis-0 -- redis-cli -a 123456\"" >> ~/.bashrc
echo "etcdctl() { k exec -n iot-gateway -it ii-se-monitor-etcd-0 -- sh -c \"ETCDCTL_API=3 etcdctl $*\"; }" >> ~/.bashrc

source ~/.bashrc