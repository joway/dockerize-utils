# dockerize-utils

Put some helpful utils(`curl`, `dig`, `ab`, `httpie`, etc) into kubernetes or other platform.

### Deploy

```
kubectl create -f https://github.com/joway/dockerize-utils/blob/master/dockerize-utils.yaml
```

### Usage

```
kubectl get pods | grep kube-utils
# get your kube-utils pod name.

kubectl exec -it {POD_NAME} bash

```
