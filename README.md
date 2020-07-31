# graphite-test-docker
Test scripts for testing Graphite using Docker

```
cd simple && docker-compose build && docker-compose up
```

* simple - usual Graphite 
* go-carbon - test of Go-carbon
* statsd - test statsd/brubeck 
* cluster - 3 node cluster

http://localhost:80 - Graphite Web

http://localhost:3000 - Grafana w/Carbon dashboard
