Create dashboard deployment:

```
$ curl -sSL https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml | sed "s/amd64/arm/g" | kubectl create -f -
```

Label a node as the "load balancer" node:

```
$ kubectl label node <load balancer-node> nginx-controller=traefik
```

Apply specs in the following order:

* role
* ingress-controller
* ingress
