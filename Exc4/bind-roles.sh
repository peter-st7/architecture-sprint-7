#! /bin/sh

# Роли не объединены в группы для выполнения принципа минимальных привилегий. Роли назначаются под конкретного сотрудника.

# Присовение ролей СУЗ client-developer
kubectl create rolebinding client-developer_pod-reader-bnd --role=pod-reader --serviceaccount=client-svc-ns:client-developer --namespace=client-svc-ns
kubectl create rolebinding client-developer_pod-logs-reader-bnd --role=pod-logs-reader --serviceaccount=client-svc-ns:client-developer --namespace=client-svc-ns

# Присовение ролей СУЗ client-svc-operator
kubectl create rolebinding client-svc-operator_pod-reader-bnd --role=pod-reader --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns
kubectl create rolebinding client-svc-operator_pod-logs-reader-bnd --role=pod-logs-reader --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns
kubectl create rolebinding client-svc-operator_configmap-reader-bnd --role=configmap-reader --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns
kubectl create rolebinding client-svc-operator_configmap-updater-bnd --role=configmap-updater --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns
kubectl create rolebinding client-svc-operator_deployments-reader-bnd --role=deployments-reader --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns
kubectl create rolebinding client-svc-operator_network-policy-reader-bnd --role=network-policy-reader --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns
kubectl create rolebinding client-svc-operator_network-policy-updater-bnd --role=network-policy-updater --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns
kubectl create rolebinding client-svc-operator_network-policy-creator-bnd --role=network-policy-creator --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns
kubectl create rolebinding client-svc-operator_secret-updater-bnd --role=secret-updater --serviceaccount=client-svc-ns:client-svc-operator --namespace=client-svc-ns

# Присовение ролей СУЗ tenant-developer
kubectl create rolebinding tenant-developer_pod-reader-bnd --role=pod-reader --serviceaccount=tenant-svc-ns:tenant-developer --namespace=tenant-svc-ns
kubectl create rolebinding tenant-developer_pod-logs-reader-bnd --role=pod-logs-reader --serviceaccount=tenant-svc-ns:tenant-developer --namespace=tenant-svc-ns

