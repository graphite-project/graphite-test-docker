#!/bin/sh

graphite_data_source=$(cat <<EOF
{
  "name":"graphite",
  "type":"graphite",
  "url":"http://graphite",
  "access":"proxy",
  "isDefault":true,
  "basicAuth":false
}
EOF
)

until $(curl -sfo /dev/null http://grafana:3000/api/datasources); do
  # wait for grafana to boot
  sleep 1
done
curl -vX POST -d "${graphite_data_source}" -H "Content-Type: application/json" http://grafana:3000/api/datasources
