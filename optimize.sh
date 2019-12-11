#!/bin/vbash

readonly logFile="/var/log/postprovisionoptimize.log"

source /opt/vyatta/etc/functions/script-template

configure > ${logFile}

delete system task-scheduler task postprovisionoptimize >> ${logFile}
delete vpn l2tp remote-access dhcp-interface
set vpn l2tp remote-access outside-address 0.0.0.0
commit
exit

