#!/bin/sh
name=`kubectl get service | grep storm-ui | awk '{print $3}'`
cat > /etc/nginx/sites-enabled/reverse-proxy.conf <<EOF
server {
        listen 8080;
        location / {
                proxy_pass http://${name}:8080;
        }
}
EOF
nginx -t
systemctl restart nginx
curl localhost:8080
