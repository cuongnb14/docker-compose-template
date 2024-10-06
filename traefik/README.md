# Create basic auth
```sh
sudo apt install apache2-utils
htpasswd -n admin
# enter password => Eg result: admin:$apr1$tPcm4PWb$mUjlTkdl0xTv0pE9XPcXe0
# Append $ before `$` in result then config it in docker compose file admin:$$apr1$$tPcm4PWb$$mUjlTkdl0xTv0pE9XPcXe0
```

# Config auth middlware for container
```
--label "traefik.http.routers.$ROUTER_NAME.middlewares=dev-auth" \
```