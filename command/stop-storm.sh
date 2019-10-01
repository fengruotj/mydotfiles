#nimbus相关进程: 
kill `ps aux | egrep '(daemon\.nimbus)|(storm\.ui\.core)' | fgrep -v egrep | awk '{print $2}'` 
kill -9 `ps -ef | grep Nimbus |fgrep -v 'grep' | awk '{print $2}'| head -n 1`
#zkServer.sh stop
#kill supervisor相关进程

kill -9 `ps -ef | grep LogviewerServer |fgrep -v 'grep' | awk '{print $2}'| head -n 1`
kill -9 `ps -ef | grep Supervisor | fgrep -v 'grep' |  awk '{print $2}'| head -n 1`
