#! /bin/sh

# Использование сервисных УЗ в качестве пользовательских УЗ выполняется только для демонстрации.
# В продуктиве следует осуществлять аутентификацию через OpenID Connect.

# Создание namespace группы сервисов для клиентов
kubectl create namespace client-svc-ns

# Создание СУЗ client-developer разработчика сервисов для клиентов в пространстве имен client-svc-ns
kubectl create serviceaccount client-developer -n client-svc-ns

# Создание СУЗ client-svc-operator оператора сервисов для клиентов в пространстве имен client-svc-ns
kubectl create serviceaccount client-svc-operator -n client-svc-ns

# Создание namespace группы сервисов ЖКУ
kubectl create namespace tenant-svc-ns

# Создание СУЗ tenant-developer разработчика сервисов ЖКУ в пространстве имен tenant-svc-ns
kubectl create serviceaccount tenant-developer -n tenant-svc-ns