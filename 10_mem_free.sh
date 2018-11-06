#!/bin/bash
mem_total=$(free -m|awk '/Mem/{print $2}')
mem_free=$(free -m|awk '/Mem/{print $NF}')
mem_freepercent=$(echo "$mem_free $mem_total"|awk '{printf ("%.2f\n",$1/$2*100)}' )

TS=`/bin/date +%s`
endpoint=`/bin/hostname`


#echo $ops_qps $ops_fails $ops_redis_errors $sessions_total $sessions_alive
#exit 0
######### begin
echo  "["
#first
#last
echo '{"metric": "'"memory.freepercent"'", "endpoint": "'"$endpoint"'", "timestamp": '"$TS"', "step": 60, "value": '"$freepercent"',"counterType": "GAUGE","tags": ""},'
echo  "]"
### over
