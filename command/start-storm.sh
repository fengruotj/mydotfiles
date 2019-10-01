#!/bin/bash
#start zookeeper
#zkServer.sh start
#for i in $(seq 4 5);do ssh root$i "hostname;/home/tj/softwares/zookeeper-3.4.6/bin/zkServer.sh start";done
source /etc/profile
nohup ~/opt/storm/apache-storm-2.0.0-SNAPSHOT/bin/storm nimbus > ~/opt/storm/apache-storm-2.0.0-SNAPSHOT/logs/nimbus.out 2>&1 &
nohup ~/opt/storm/apache-storm-2.0.0-SNAPSHOT/bin/storm ui > ~/opt/storm/apache-storm-2.0.0-SNAPSHOT/logs/ui.out 2>&1 &
nohup ~/opt/storm/apache-storm-2.0.0-SNAPSHOT/bin/storm logviewer > ~/opt/storm/apache-storm-2.0.0-SNAPSHOT/logs/logviewer.out 2>&1 &

nohup ~/opt/storm/apache-storm-2.0.0-SNAPSHOT/bin/storm supervisor > ~/opt/storm/apache-storm-2.0.0-SNAPSHOT/logs/supervisor.out 2>&1 &
