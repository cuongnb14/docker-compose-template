# Expose promethues metrics

- Copy config file from docker image

```sh
docker cp clickhouse-server:/etc/clickhouse-server/config.xml .
```

- Un-comment prometheus config
```xml
    <prometheus>
        <endpoint>/metrics</endpoint>
        <port>9363</port>

        <metrics>true</metrics>
        <events>true</events>
        <asynchronous_metrics>true</asynchronous_metrics>
    </prometheus>
```

- Update docker-compose file

```yaml
services:
  clickhouse-server:
    ...
    ports:
    - 8123:8123 
    - 9000:9000

    - 9363:9363
    volumes:
      - ./config.xml:/etc/clickhouse-server/config.xml
      ...
      
```