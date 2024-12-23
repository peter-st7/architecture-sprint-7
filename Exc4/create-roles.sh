#! /bin/sh

# Локальные роли
kubectl create role secret-reader --verb=get --verb=watch --verb=list --resource=secrets
kubectl create role secret-updater --verb=update --resource=secrets
kubectl create role pod-reader --verb=get --verb=watch --verb=list --resource=pods
kubectl create role pod-logs-reader --verb=get --verb=watch --verb=list --resource=pods/log
kubectl create role configmap-reader --verb=get --verb=list --resource=configmaps
kubectl create role configmap-updater --verb=get --verb=update --resource=configmaps
kubectl create role deployments-reader --verb=get --verb=watch --verb=list --resource=deployments
kubectl create role network-policy-reader --verb=get --verb=watch --verb=list --resource=networkpolicies
kubectl create role network-policy-updater --verb=get --verb=update --resource=networkpolicies
kubectl create role network-policy-creator --verb=get --verb=create --resource=networkpolicies

# Роли для управления кластером
kubectl create clusterrole cluster-administrator --verb=* --resource=*
kubectl create clusterrole cluster-operator --verb=get --verb=list --resource=*
