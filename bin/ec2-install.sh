#!/bin/sh

wget 'http://albertlatacz.published.s3.amazonaws.com/javarepl/javarepl.jar' -O /home/ubuntu/javarepl.jar
cd /home/ubuntu
sudo nohup java -jar javarepl.jar --detached-console --sandboxed --port=80 2>&1 </dev/null &
echo $! > javarepl.pid
