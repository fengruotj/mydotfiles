#nimbus节点
nimbusServers='node91'

#停止所有的nimbus和ui和log
for nim in $nimbusServers
do
    echo 从节点 $nim 停止nimbus和ui...[ done ]
    ssh $nim "kill -9 `ssh $nim ps -ef | grep nimbus | grep -v 'grep' | awk '{print $2}'| head -n 1`" >/dev/null 2>&1
    ssh $nim "kill -9 `ssh $nim ps -ef | grep core | grep -v 'grep' | awk '{print $2}'| head -n 1`" >/dev/null 2>&1
    ssh $nim "kill -9 `ssh $nim ps -ef | grep LogviewerServer | grep -v 'grep' | awk '{print $2}'| head -n 1`" >/dev/null 2>&1
done

#停止所有的supervisor
for visor in {24..29} {30..36} {42..45} {62..65} {88..100}
do
    echo 从节点 node$visor 停止supervisor...[ done ]
    ssh node$visor "kill -9 `ssh node$visor ps -ef | grep supervisor | grep -v 'grep' | awk '{print $2}'| head -n 1`" >/dev/null 2>&1
    ssh node$visor "kill -9 `ssh node$visor ps -ef | grep LogviewerServer | grep -v 'grep' | awk '{print $2}'| head -n 1`" >/dev/null 2>&1
done
