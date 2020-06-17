#!/bin/sh

/configure.sh ${ZOOKEEPER_SERVICE_HOST:-$1}

cat >> /opt/apache-storm/conf/storm.yaml <<EOF
storm.scheduler: "org.apache.storm.scheduler.resource.ResourceAwareScheduler"
EOF

cat >> /opt/apache-storm/riot-bench/modules/tasks/src/main/resources/tasks.properties <<EOF
IO.MQTT_PUBLISH.APOLLO_URL=tcp://${MOSQUITTO1_SERVICE_HOST:-$1}:1883
IO.MQTT_SUBSCRIBE.APOLLO_URL=tcp://${MOSQUITTO1_SERVICE_HOST:-$1}:1883
EOF

cat >> /opt/apache-storm/riot-bench/modules/tasks/src/main/resources/tasks_TAXI.properties <<EOF
IO.MQTT_PUBLISH.APOLLO_URL=tcp://${MOSQUITTO1_SERVICE_HOST:-$1}:1883
IO.MQTT_SUBSCRIBE.APOLLO_URL=tcp://${MOSQUITTO1_SERVICE_HOST:-$1}:1883
EOF

exec bin/storm nimbus
