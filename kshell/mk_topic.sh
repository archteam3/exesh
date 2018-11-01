echo "# $#"
if [ $# -ne 2 ] 
then
    echo "usage $0 [start] [count]"
    exit -1
fi

x=$1
y=`expr $2 - 1`

echo "x:$x, y:$y"

echo "`expr $x + $y`"

for i in `seq 0 $y`
do
    z=`expr $x + $i`
    zs=`printf "%04d" $z`
    /system/kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --create --replication-factor 3 --partitions 3 --config retention.ms=43200000 --topic "test.$zs"
done
