# Задание 5. Управление трафиком внутри кластера Kubertnetes

```sh
# Создание тестового namespace
$ kubectl apply -f namespace.yaml

# Применение сетевых политик
$ kubectl apply -f network-policy.yaml

# Запуск сервисов
kubectl run admin-back-end-api-app --image=nginx --labels role=admin-back-end-api --expose --port 80 -n network-policy-ns

kubectl run admin-front-end-app --image=nginx --labels role=admin-front-end --expose --port 80 -n network-policy-ns

kubectl run back-end-api-app --image=nginx --labels role=back-end-api --expose --port 80 -n network-policy-ns

kubectl run front-end-app --image=nginx --labels role=front-end --expose --port 80 -n network-policy-ns
```

Для проверки ограничения трафика необходимо запустить консоль на `admin-front-end-app` или `front-end-app` и попытаться подключиться к backend-сервисам, например:
```sh
kubectl exec -it front-end-app -n network-policy-ns -- bash

# Запрос вернет стартовую страницу Nginx
curl http://back-end-api-app

# Запрос завершится по таймауту
curl http://admin-back-end-api-app
```