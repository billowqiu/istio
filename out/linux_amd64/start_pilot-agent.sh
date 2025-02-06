#########################################################################
# File Name: start_pilot-agent.sh
# Author: billowqiu
#########################################################################
#!/bin/bash
nohup ./pilot-agent proxy router --domain istio-system.svc.cluster.local --proxyLogLevel=trace --proxyComponentLogLevel=misc:trace --log_output_level=default:debug > /data1/pilot-agent.log 2>&1 &
