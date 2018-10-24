# dockerize-utils

[![CircleCI](https://circleci.com/gh/joway/dockerize-utils.svg?style=svg)](https://circleci.com/gh/joway/dockerize-utils)
[![](https://images.microbadger.com/badges/version/joway/dockerize-utils.svg)](https://hub.docker.com/r/joway/dockerize-utils/)

Put some helpful utils(`curl`, `dig`, `ab`, `httpie`, etc) into kubernetes or other platform.

### Deploy

```
kubectl create -f https://raw.githubusercontent.com/joway/dockerize-utils/master/dockerize-utils.yaml
```

### Usage

```
kubectl get pods | grep kube-utils
# get your kube-utils pod name.

kubectl exec -it {POD_NAME} bash

```
