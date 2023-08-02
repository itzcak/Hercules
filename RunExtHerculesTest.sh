#!/bin/bash

DIRNAME="Tests_$(date +%d_%m_%Y_%H_%M_%S)"
SERVER_ADDR="54.241.145.197"
TEST_PLACE="AWS"
SERVER_BASE_PORT=6122
ITER_NUM=70

#S1=(\
#	'num=(1)'\
#	'head=("Hercules_100m")'\
#	'delay=(0)'\
#	'filen=("Scenario1")'\
#	'min=(100000000)'\
#	'max=(150000000)'\
#	'cong=("TPCC")'\
#   )
#S2=(\
#	'num=(2)'\
#	'head=("Hercules_100m,Hercules_5m")'\
#	'delay=(0)'\
#	'filen=("Scenario2")'\
#	'min=(100000000 5000000)'\
#	'max=(150000000 7500000)'\
#	'cong=("TPCC" "TPCC")'\
#  )
#S3=(\
#	'num=(2)'\
#	'head=("Hercules_100m,Hercules_5m")'\
#	'delay=(1)'\
#	'filen=("Scenario3")'\
#	'min=(100000000 5000000)'\
#	'max=(150000000 7500000)'\
#	'cong=("TPCC" "TPCC")'\
#  )
#S4=(\
#	'num=(10)'\
#	'head=("Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m")'\
#	'delay=(0)'\
#	'filen=("Scenario4")'\
#	'min=(10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000)'\
#	'max=(15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000)'\
#	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" )'\
#  )
#S5=(\
#	'num=(11)'\
#	'head=("Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_500k")'\
#	'delay=(0)'\
#	'filen=("Scenario5")'\
#	'min=(10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000 500000)'\
#	'max=(15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000 750000)'\
#	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC")'\
#   )
#S6=(\
#	'num=(11)'\
#	'head=("Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_10m,Hercules_500k")'\
#	'delay=(10)'\
#	'filen=("Scenario6")'\
#	'min=(10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000 10000000 500000)'\
#	'max=(15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000 15000000 750000)'\
#	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "TPCC")'\
#   )
#S7=(\
#	'num=(2)'\
#	'head=("Hercules_50m,Hercules_50m")'\
#	'delay=(1)'\
#	'filen=("Scenario7")'\
#	'min=(50000000 50000000)'\
#	'max=(75000000 75000000)'\
#	'cong=("TPCC" "TPCC")'\
#   )
#S8=(\
#	'num=(2)'\
#	'head=("Hercules_70m,Hercules_70m")'\
#	'delay=(0)'\
#	'filen=("Scenario8")'\
#	'min=(70000000 70000000)'\
#	'max=(105000000 105000000)'\
#	'cong=("TPCC" "TPCC")'\
#   )
#S9a=(\
#	'num=(2)'\
#	'head=("Hercules_100m,Reno100m")'\
#	'delay=(0)'\
#	'filen=("Scenario9a")'\
#	'min=(100000000 100000000)'\
#	'max=(150000000 150000000)'\
#	'cong=("TPCC" "RENO")'\
#   )
#S9b=(\
#	'num=(2)'\
#	'head=("Hercules_100m,BBR100m")'\
#	'delay=(0)'\
#	'filen=("Scenario9b")'\
#	'min=(100000000 100000000)'\
#	'max=(150000000 150000000)'\
#	'cong=("TPCC" "B2ON")'\
#   )
#S9c=(\
#	'num=(2)'\
#	'head=("Hercules_100m,CUBIC100m")'\
#	'delay=(0)'\
#	'filen=("Scenario9c")'\
#	'min=(100000000 100000000)'\
#	'max=(150000000 150000000)'\
#	'cong=("TPCC" "QBIC")'\
#   )
#S10a=(\
#	'num=(3)'\
#	'head=("Hercules_100m,RENO_100m,Hercules_5m")'\
#	'delay=(0)'\
#	'filen=("Scenario10a")'\
#	'min=(100000000 100000000 5000000)'\
#	'max=(150000000 150000000 7500000)'\
#	'cong=("TPCC" "RENO" "TPCC")'\
#    )
S10b=(\
	'num=(3)'\
	'head=("Hercules_100m,BBR_100m,Hercules_5m")'\
	'delay=(0)'\
	'filen=("Scenario10b")'\
	'min=(100000000 100000000 5000000)'\
	'max=(150000000 150000000 7500000)'\
	'cong=("TPCC" "B2ON" "TPCC")'\
    )
#S10c=(\
#	'num=(3)'\
#	'head=("Hercules_100m,CUBIC_100m,Hercules_5m")'\
#	'delay=(0)'\
#	'filen=("Scenario10c")'\
#	'min=(100000000 100000000 5000000)'\
#	'max=(150000000 150000000 7500000)'\
#	'cong=("TPCC" "QBIC" "TPCC")'\
#    )
S10d=(\
	'num=(3)'\
	'head=("Hercules_100m,Vivace_100m,Hercules_5m")'\
	'delay=(0)'\
	'filen=("HerculesVivaceLimited")'\
	'min=(100000000 100000000 5000000)'\
	'max=(150000000 150000000 7500000)'\
	'cong=("TPCC" "VPCC" "TPCC")'\
    )
#S11a=(\
#	'num=(3)'\
#	'head=("Hercules_100m,CUBIC_100m,Hercules_5m")'\
#	'delay=(2)'\
#	'filen=("Scenario11a")'\
#	'min=(100000000 100000000 5000000)'\
#	'max=(150000000 150000000 7500000)'\
#	'cong=("TPCC" "QBIC" "TPCC")'\
#    )
#S11b=(\
#	'num=(3)'\
#	'head=("Hercules_100m,BBR_100m,Hercules_5m")'\
#	'delay=(2)'\
#	'filen=("Scenario11b")'\
#	'min=(100000000 100000000 5000000)'\
#	'max=(150000000 150000000 7500000)'\
#	'cong=("TPCC" "B2ON" "TPCC")'\
#    )
#S11c=(\
#	'num=(3)'\
#	'head=("Hercules_100m,RENO_100m,Hercules_5m")'\
#	'delay=(2)'\
#	'filen=("Scenario11c")'\
#	'min=(100000000 100000000 5000000)'\
#	'max=(150000000 150000000 7500000)'\
#	'cong=("TPCC" "RENO" "TPCC")'\
#    )
S11d=(\
	'num=(3)'\
	'head=("Hercules_100m,Vivace_100m,Hercules_5m")'\
	'delay=(2)'\
	'filen=("HerculesVivaceLimitedWithDelay")'\
	'min=(100000000 100000000 5000000)'\
	'max=(150000000 150000000 7500000)'\
	'cong=("TPCC" "VPCC" "TPCC")'\
    )
#S12=(\
#	'num=(5)'\
#	'head=("Hercules_10k,Hercules_100k,Hercules_1m,Hercules_10m,Hercules_100m")'\
#	'delay=(0)'\
#	'filen=("Scenario12")'\
#	'min=(10000 100000 1000000 10000000 100000000)'\
#	'max=(15000 150000 1500000 15000000 150000000)'\
#	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC")'\
#   )
#S13=(\
#	'num=(6)'\
#	'head=("Hercules_10k,Hercules_100k,Hercules_1m,Hercules_10m,Hercules_100m,Cubic5m")'\
#	'delay=(5)'\
#	'filen=("Scenario13")'\
#	'min=(10000 100000 1000000 10000000 100000000 5000000)'\
#	'max=(15000 150000 1500000 15000000 150000000 7500000)'\
#	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC" "QBIC")'\
#   )

S20=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,100m")'\
	'delay=(0)'\
	'filen=("limited_Hercules")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(15000 150000 1500000 15000000 150000000)'\
	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC")'\
   )
S21=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,100m")'\
	'delay=(0)'\
	'filen=("unlimited_Hercules")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(150000000 150000000 150000000 150000000 150000000)'\
	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC")'\
   )
S22=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,Unspecified")'\
	'delay=(0)'\
	'filen=("Unspecified1_Hercules")'\
	'min=(10000 100000 1000000 10000000 0)'\
	'max=(15000 150000 1500000 15000000 0)'\
	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC")'\
   )
S22a=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,Unspecified")'\
	'delay=(0)'\
	'filen=("Unlimited_10m_Hercules")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(15000 150000 1500000 1500000000 150000000)'\
	'cong=("TPCC" "TPCC" "TPCC" "TPCC" "TPCC")'\
   )

S23=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,100m")'\
	'delay=(0)'\
	'filen=("limited_BBRv2")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(15000 150000 1500000 15000000 150000000)'\
	'cong=("B2ON" "B2ON" "B2ON" "B2ON" "B2ON")'\
   )
S24=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,100m")'\
	'delay=(0)'\
	'filen=("unlimited_BBRv2")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(150000000 150000000 150000000 150000000 150000000)'\
	'cong=("B2ON" "B2ON" "B2ON" "B2ON" "B2ON")'\
   )
S25=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,Unspecified")'\
	'delay=(0)'\
	'filen=("Unspecified1_BBRv2")'\
	'min=(10000 100000 1000000 10000000 0)'\
	'max=(15000 150000 1500000 15000000 0)'\
	'cong=("B2ON" "B2ON" "B2ON" "B2ON" "B2ON")'\
   )
S25a=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,Unspecified")'\
	'delay=(0)'\
	'filen=("Unlimited_10m_BBRv2")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(15000 150000 1500000 1500000000 150000000)'\
	'cong=("B2ON" "B2ON" "B2ON" "B2ON" "B2ON")'\
   )
S26=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,100m")'\
	'delay=(0)'\
	'filen=("limited_Cubic")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(15000 150000 1500000 15000000 150000000)'\
	'cong=("QBIC" "QBIC" "QBIC" "QBIC" "QBIC")'\
   )
S27=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,100m")'\
	'delay=(0)'\
	'filen=("unlimited_Cubic")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(150000000 150000000 150000000 150000000 150000000)'\
	'cong=("QBIC" "QBIC" "QBIC" "QBIC" "QBIC")'\
   )
S28=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,Unspecified")'\
	'delay=(0)'\
	'filen=("Unspecified1_Cubic")'\
	'min=(10000 100000 1000000 10000000 0)'\
	'max=(15000 150000 1500000 15000000 0)'\
	'cong=("QBIC" "QBIC" "QBIC" "QBIC" "QBIC")'\
   )
S28a=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,Unspecified")'\
	'delay=(0)'\
	'filen=("Unlimited_10m_Cubic")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(15000 150000 1500000 1500000000 150000000)'\
	'cong=("QBIC" "QBIC" "QBIC" "QBIC" "QBIC")'\
   )
S29=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,100m")'\
	'delay=(0)'\
	'filen=("limited_Vivace")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(15000 150000 1500000 15000000 150000000)'\
	'cong=("VPCC" "VPCC" "VPCC" "VPCC" "VPCC")'\
   )
S30=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,100m")'\
	'delay=(0)'\
	'filen=("unlimited_Vivace")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(150000000 150000000 150000000 150000000 150000000)'\
	'cong=("VPCC" "VPCC" "VPCC" "VPCC" "VPCC")'\
   )
S31=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,Unspecified")'\
	'delay=(0)'\
	'filen=("Unspecified1_Vivace")'\
	'min=(10000 100000 1000000 10000000 0)'\
	'max=(15000 150000 1500000 15000000 0)'\
	'cong=("VPCC" "VPCC" "VPCC" "VPCC" "VPCC")'\
   )
S31a=(\
	'num=(5)'\
	'head=("10k,100k,1m,10m,Unspecified")'\
	'delay=(0)'\
	'filen=("Unlimited_10m_Vivace")'\
	'min=(10000 100000 1000000 10000000 100000000)'\
	'max=(15000 150000 1500000 1500000000 150000000)'\
	'cong=("VPCC" "VPCC" "VPCC" "VPCC" "VPCC")'\
   )

BW=(140 125 100)
#BW=(100)
LATENCY=(20) #Full Round trip latency
#LATENCY=(0 50 100)
#BUF=(0.5 1 1.5 2 2.5 3 3.5 4 4.5 5)
BUF=(5)
#LOSS=(0 0.005 0.01 0.015 0.02 0.025 0.03 0.035 0.04 0.045 0.05 0.055 0.06)
#LOSS=(0 0.01 0.03 0.05 0.07 0.1)
LOSS=(0)
BW_STR=("NoCongestion140mbps" "Congestion125mbps" "Congestion100mbps")
#BW_STR=("Congestion100mbps")

#Parameters
StopServer()
{
    ssh -i /home/ubuntu/quic/HerculesSetup.pem ubuntu@$SERVER_ADDR killall quic_server &> /dev/null
}

#Parameters
# 1) Connection min BW: Value in bits per second
# 2) Connection max BW: Value in bits per second
# 3) Server port number 
# 4) Call stop server?

StartServer()
{
    if [ $4 -gt 0 ]; then
    	StopServer
    	sleep 2
    fi
    ssh -i /home/ubuntu/quic/HerculesSetup.pem ubuntu@$SERVER_ADDR "/home/ubuntu/quic/quic_server --port=$3 --quic_response_cache_dir=/home/ubuntu/QuicPlayDir\
	--certificate_file=/home/ubuntu/quic/leaf_cert.pem --key_file=/home/ubuntu/quic/leaf_cert.pkcs8\
	--generate_dynamic_responses --stream_min_bw=100000000 --stream_max_bw=150000000 --stream_priority=\"\" --use_default_prioritization\
	--con_min_bw=\"$1\" --con_max_bw=\"$2\" " &> /home/ubuntu/quic/quic_server_$3 &
}

#Parameters
# num, min, max are global vars extracted by eval from configuration line
StartNServers()
{
    local i
    local port=$SERVER_BASE_PORT
    DO_STOP=1
    for ((i=0; i < $num; i++))
    do
	StartServer ${min[$i]} ${max[$i]} $port $DO_STOP
	DO_STOP=0
	((port++))
	sleep 0.5
    done
}

#parameters
# 1) BW in mbps
# 2) Delay in ms (RTT = Delay *2)
# 3) Packet loss percent
# 4) Queue size for ms BW (i.e queue length 40 will hold BW for 40 ms)

ConfigSimulator()
{
    ssh -i /home/ubuntu/quic/HerculesSetup.pem ubuntu@$SERVER_ADDR "/home/ubuntu/simulator/change $1 $2 $3 $4"
}

#Parameters
# Folowing vars used from configuration
# filen: file name to write results. head: first line in results file. num: number of concurrent cons
ParseNResults()
{
    local i
    local n
    for((i=1; i<=$num; i++))
    do
	if ((i == delay+1 && delay > 0)) 
	then
	    for ((n=1; n <= 10; n++))
	    do
	        sed -i -e '1s/^/streams:(1)     0       0: 0\n/' client_output$i.txt
	    done
	fi
        sed -i -e 's/streams/streams'$i'/' client_output$i.txt
    done

    awk 'BEGIN\
          {\
	      num='$num';\
	      for (i=1; i <= num; i++)\
	      {\
		  n[i]=1;\
		  pat[i]=sprintf("streams%d:", i);\
	      }\
	  }\
          {\
	      for(i=1; i<=num; i++)\
	      {\
	          if($0 ~ pat[i]) {\
		      A[i][n[i]++]=$4;\
		      break;\
	          }\
	      }\
	  }\
          END\
	  {\
	      printf("'$head'\n");\
	      max=1;\
	      for(i=1; i<=num; i++)\
	      {\
		  if(n[i] > max)\
		      max=n[i];\
	      }\
	      for(i=2;i < max; i++)\
	      {\
		  for (i2=1; i2 <=num; i2++)\
		  {\
		      if (A[i2][i] > A[i2][i-1])\
		      {\
			  B=(A[i2][i]-A[i2][i-1])*8;\
		      } else {\
		          B=0;\
		      }\
		      if(i2==1) {\
			  printf("%u", B);\
		      } else {\
			  printf(",%u", B);\
		      }\
		  }\
	          printf("\n");\
	      }\
	  }' client_output*.txt | tee "$filen.csv"
    rm -f client_output*.txt &> /dev/null
}

STREAMS="http://www.example.org/100000000000 "
#Parameters
# vars: num: number of concurrent connections. cong: array of 2 congestion control algorithms. delay: do delay after such cons started.
# Vars extracted by eval from configuration
RunNTests()
{
    local i
    local port=$SERVER_BASE_PORT
    echo "Running Test for $filen"
    for ((i=1; i <= num; i++))
    do
        echo "script -f client_output$i.txt -c \"timeout 31 ../quic_client --host=$SERVER_ADDR --port=$((port+i-1))\
             --disable_certificate_verification --parallel --drop_response_body --print_delay=1000 --connection_options=${cong[$((i-1))]} $STREAMS\"" > cmd$i
    done
    for ((i=1; i <= $num; i++))
    do
	at now -f cmd$i
	[ $i -eq $delay ] && sleep 10
    done

    echo
    while : ; do
	sleep 1
	RES=$(ps -eaf | grep quic_client | grep -v grep | wc -l)
	[ $RES -eq 0 ] && break
	echo -n .
    done
    sleep 1
    echo
    rm -f cmd* &> /dev/null
}

#Parameters
# list of parameters of the scenario, S1 or S2 e.t.c (see definition above) 
# parameters are evaluated to vars which are used by other functions.
#vars: num: Number of concurrent connections. head: description list of tests (with ,)
#      min: Min BW list for all cons. max: max BW list. cong: Congestion control string 2 fields. 
#      delay: Do delay after connectin X starts. filen: Name of scenario to file
RunScenario()
{
    local i
    SCEN=("$@")
    for i in "${SCEN[@]}"; do eval $i; done
    BASE_FILEN=$filen
    StartNServers
    sleep 1
    for((i=1; i <= $ITER_NUM; i++))
    do
	filen="${TEST_PLACE}_${BW_STR[$A_STR]}_${c}RttBuffer_${d}Loss_${b}Latency_${BASE_FILEN}_$i"
        RunNTests
        ParseNResults 
    done
}

RunAllScenarios()
{
#    RunScenario "${S1[@]}"
#    RunScenario "${S2[@]}"
#    RunScenario "${S3[@]}"
#    RunScenario "${S4[@]}"
#   RunScenario "${S5[@]}"
#   RunScenario "${S6[@]}"
#   RunScenario "${S7[@]}"
#   RunScenario "${S8[@]}"
#   RunScenario "${S9a[@]}"
#    RunScenario "${S9b[@]}"
#    RunScenario "${S9c[@]}"
#    RunScenario "${S10a[@]}"
#    RunScenario "${S10b[@]}"
#   RunScenario "${S10c[@]}"
#   RunScenario "${S10d[@]}"
#   RunScenario "${S11a[@]}"
#   RunScenario "${S11b[@]}"
#   RunScenario "${S11c[@]}"
#   RunScenario "${S11d[@]}"
#   RunScenario "${S12[@]}"
#    RunScenario "${S13[@]}"
#    RunScenario "${S20[@]}"
#    RunScenario "${S21[@]}"
#    RunScenario "${S22[@]}"
    RunScenario "${S22a[@]}"
#    RunScenario "${S23[@]}"
#    RunScenario "${S24[@]}"
#    RunScenario "${S25[@]}"
#    RunScenario "${S25a[@]}"
#    RunScenario "${S26[@]}"
#    RunScenario "${S27[@]}"
#    RunScenario "${S28[@]}"
#    RunScenario "${S28a[@]}"
#    RunScenario "${S29[@]}"
#    RunScenario "${S30[@]}"
#    RunScenario "${S31[@]}"
#    RunScenario "${S31a[@]}"
}

mkdir "${DIRNAME}_$1"
cd "${DIRNAME}_$1"
PARAMS=("$@")
for i in ${PARAMS[@]}; do eval $i; done 

A_STR=0
for a in "${BW[@]}"
do
    for b in "${LATENCY[@]}"
    do
        for c in "${BUF[@]}"
	do
	    for d in "${LOSS[@]}"
	    do
	        BUF_LATENCY=$b
		[ $BUF_LATENCY -lt 20 ] && BUF_LATENCY=20
	        PA="$a $b $(echo $d | awk '{print $1 *100}') $(echo $c | awk '{print $1 * '$BUF_LATENCY'}')"
		echo "ConfigSimulator $PA"
                ConfigSimulator $PA
                RunAllScenarios
	    done
	done
    done
    ((A_STR++))
done
../TarCmd
#ConfigSimulator "100 10 0 100"
#RunAllScenarios
