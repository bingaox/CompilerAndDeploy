#!/bin/sh

echo "a"
cd /root/spark
rm spark-2.1.0-bin-custom-spark.tgz
./dev/make-distribution.sh --name custom-spark --tgz -Phadoop-2.4 
cp -r dist/* ./
cd /root/spart-ec2
./copy-dir /root/spark
echo "success"
