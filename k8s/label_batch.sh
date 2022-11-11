#!/bin/bash

# 通过awk，批量给node增加标签
kubectl get nodes --show-labels | grep -v env=live |  awk '{print $1;cmd="kubectl label nodes "$1" env=live";print cmd;system(cmd)}'