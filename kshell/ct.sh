/system/kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --create --replication-factor 3 --partitions 3 --config retention.ms=43200000 --topic $1
