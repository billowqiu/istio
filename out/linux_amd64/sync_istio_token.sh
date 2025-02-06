#########################################################################
# File Name: sync_istio_token.sh
# Author: billowqiu
#########################################################################
#!/bin/bash

echo  "`date` sync istio-token"
source ~/.bashrc
export PATH=/usr/local/bin:$PATH
minikube kubectl --  -n istio-system  exec istio-ingressgateway-86f6c4856d-sdwp6  -- cat /var/run/secrets/tokens/istio-token > /data/home/billowqiu/code/mesh/istio/out/linux_amd64/var/run/secrets/tokens/istio-token
echo "`date` sync istio-token end"

