bahrathkumaraju@Bahrathkumarajus-MacBook-Pro nginx_yaml_files % kubectl apply -f .
deployment.apps/nginx-deployment created
service/nginx-service created
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro nginx_yaml_files % kubectl get all
NAME                                    READY   STATUS    RESTARTS   AGE
pod/nginx-deployment-85b98978db-bphxb   1/1     Running   0          9s

NAME                    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
service/kubernetes      ClusterIP   10.43.0.1      <none>        443/TCP        47m
service/nginx-service   NodePort    10.43.177.72   <none>        80:30943/TCP   9s

NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-deployment   1/1     1            1           9s

NAME                                          DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-deployment-85b98978db   1         1         1       9s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro nginx_yaml_files % kubectl port-forward svc/nginx-service 8888:80
Forwarding from 127.0.0.1:8888 -> 80
Forwarding from [::1]:8888 -> 80
Handling connection for 8888
^C%                                                                                                                                                                                        bahrathkumaraju@Bahrathkumarajus-MacBook-Pro nginx_yaml_files %

