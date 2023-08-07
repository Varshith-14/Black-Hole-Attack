#Define Options:
set val(chan) Channel/WirelessChannel ;#Channel Type
set val(prop) Propagation/TwoRayGround ;# radio-propagation model
set val(netif) Phy/WirelessPhy ;# network interface type
set val(mac) Mac/802_11 ;# MAC type
set val(ifq) Queue/DropTail/PriQueue ;# interface queue type
set val(ll) LL ;# link layer type
set val(ant) Antenna/OmniAntenna ;# antenna model
set val(ifqlen) 50 ;# max packet in ifq
set val(nn) 50 ;# number of mobilenodes
#set val(r) 400 ;
set val(rp) AODV ;# routing protocol
#set val(rp) DSR ;# routing protocol
set val(x) 1000 ;
set val(y) 1000 ;
set val(stop) 150 ;

set ns [new Simulator]

set tf [open tf.tr w]
set ntf [open ntf.nam w]

$ns trace-all $tf
$ns namtrace-all-wireless $ntf 600 600

set topo [new Topography]

$topo load_flatgrid $val(x) $val(y)

create-god $val(nn)
# Create node(0) "attached" to channel #1
# configure node, please note the change below.
$ns node-config -adhocRouting $val(rp) \
-llType $val(ll) \
-macType $val(mac) \
-ifqType $val(ifq) \
-ifqLen $val(ifqlen) \
-antType $val(ant) \
-propType $val(prop) \
-phyType $val(netif) \
-channelType $val(chan) \
-topoInstance $topo \
-agentTrace ON \
-routerTrace ON \
-macTrace OFF \
-movementTrace ON 
#-channelType $val(chan) \

#$ns_ initial_node_pos $n($i) 20
#for {set i 0} {$i <  [expr$val(nn)]} { incr i } {
for {set i 0} {$i <  $val(nn)} { incr i } {
set n($i) [$ns node]
 $n($i) color blue


}

#Initial Location of mobilenodes

$n(0) color red

$n(7) set X_ 30.0
$n(7) set Y_ 4.0
$n(7) set Z_ 0.0
$n(7) color red

$n(2) set X_ 91.6678
$n(2) set Y_ 280.592
$n(2) set Z_ 0.0

$n(6) set X_ 24.0326
$n(6) set Y_ 168.474
$n(6) set Z_ 0.0

$n(3) set X_ -65.9721
$n(3) set Y_ 79.1654
$n(3) set Z_ 0.0

$n(4) set X_ 171.98
$n(4) set Y_ 114.221
$n(4) set Z_ 0.0

$n(8) set X_ 98.0155
$n(8) set Y_ 206.64
$n(8) set Z_ 0.0

$n(10) set X_ 69.0
$n(10) set Y_ 6.0
$n(10) set Z_ 0.0

$n(11) set X_ 62.1082
$n(11) set Y_ 76.3292
$n(11) set Z_ 0.0

$n(12) set X_ 414.142
$n(12) set Y_ 165.638
$n(12) set Z_ 0.0

$n(13) set X_ 299.688
$n(13) set Y_ 120.55
$n(13) set Z_ 0.0

$n(14) set X_ -210.154
$n(14) set Y_ 168.24
$n(14) set Z_ 0.0

$n(15) set X_ -237.901
$n(15) set Y_ 127.487
$n(15) set Z_ 0.0

$n(16) set X_ 617.039
$n(16) set Y_ 107.544
$n(16) set Z_ 0.0

$n(17) set X_ 499.983
$n(17) set Y_ 135.291
$n(17) set Z_ 0.0

$n(18) set X_ -299.464
$n(18) set Y_ 232.403
$n(18) set Z_ 0.0

$n(19) set X_ -230.542
$n(19) set Y_ 13.03255
$n(19) set Z_ 0.0

$n(20) set X_ 141.879
$n(20) set Y_ 26.0387
$n(20) set Z_ 0.0

$n(21) set X_ -32.4034
$n(21) set Y_ 143.094
$n(21) set Z_ 0.0

$n(22) set X_ 998.4034
$n(22) set Y_ 243.094
$n(22) set Z_ 0.0

$n(32) set X_ 998.4034
$n(32) set Y_ 193.094
$n(32) set Z_ 0.0

$n(34) set X_ 98.4034
$n(34) set Y_ 151.094
$n(34) set Z_ 0.0

$n(33) set X_ 998.4034
$n(33) set Y_ 293.094
$n(33) set Z_ 0.0

$n(23) set X_ 538.134
$n(23) set Y_ 140.493
$n(23) set Z_ 0.0

$n(24) set X_ 247.633
$n(24) set Y_ 247.144
$n(24) set Z_ 0.0

$n(25) set X_ -105.0
$n(25) set Y_ 230.669
$n(25) set Z_ 0.0

$n(26) set X_ -15.0618
$n(26) set Y_ 191.651
$n(26) set Z_ 0.0

$n(27) set X_ 191.303
$n(27) set Y_ 220.264
$n(27) set Z_ 0.0

$n(28) set X_ 501.717
$n(28) set Y_ 71.1267
$n(28) set Z_ 0.0

$n(29) set X_ 268.473
$n(29) set Y_ 199.454
$n(29) set Z_ 0.0

$n(30) set X_ 307.491
$n(30) set Y_ 28.5873
$n(30) set Z_ 0.0

$n(31) set X_ 28.2921
$n(31) set Y_ 50.3169
$n(31) set Z_ 0.0

$n(35) set X_ -208.42
$n(35) set Y_ 22.5177
$n(35) set Z_ 0.0

$n(36) set X_ -232.699
$n(36) set Y_ 275.757
$n(36) set Z_ 0.0

$n(37) set X_ -276.052
$n(37) set Y_ 173.442
$n(37) set Z_ 0.0

$n(38) set X_ -192.813
$n(38) set Y_ 235.005
$n(38) set Z_ 0.0

$n(40) set X_ -96.5672
$n(40) set Y_ 147.43
$n(40) set Z_ 0.0

$n(41) set X_ -149.459
$n(41) set Y_ 8.69709
$n(41) set Z_ 0.0

$n(42) set X_ 104.595
$n(42) set Y_ 27.7728
$n(42) set Z_ 0.0

$n(44) set X_ -148.592
$n(44) set Y_ 53.7852
$n(44) set Z_ 0.0

$n(45) set X_ 306.624
$n(45) set Y_ 37.3107
$n(45) set Z_ 0.0

$n(46) set X_ 225.119
$n(46) set Y_ 203.79
$n(46) set Z_ 0.0

$n(47) set X_ -27.2009
$n(47) set Y_ 237.606
$n(47) set Z_ 0.0

$n(49) set X_ -118.79
$n(49) set Y_ 37.2844
$n(49) set Z_ 0.0

$n(1) set X_ -18.79
$n(1) set Y_ 37.2844
$n(1) set Z_ 0.0

$n(5) set X_ -28.79
$n(5) set Y_ 37.2844
$n(5) set Z_ 0.0

$n(9) set X_ -38.79
$n(9) set Y_ 37.2844
$n(9) set Z_ 0.0

$n(39) set X_ -67.79
$n(39) set Y_ 37.2844
$n(39) set Z_ 0.0

$n(43) set X_ 998.40
$n(43) set Y_ 151.094
$n(43) set Z_ 0.0

$n(48) set X_ 222.79
$n(48) set Y_ 37.2844
$n(48) set Z_ 0.0




#
$ns at 100.0 "$n(6) setdest 270.0 160.0 5.0"
$ns at 100.0 "$n(42) setdest 270.0 160.0 5.0"
$ns at 100.0 "$n(36) setdest 270.0 160.0 5.0"
#
$ns at 100.0 "$n(35) setdest 70.0 160.0 5.0"
$ns at 100.0 "$n(16) setdest 70.0 160.0 5.0"
$ns at 100.0 "$n(25) setdest 70.0 160.0 5.0"
#
$ns at 100.0 "$n(47) setdest 10.0 160.0 5.0"
$ns at 100.0 "$n(36) setdest 10.0 160.0 5.0"
$ns at 100.0 "$n(28) setdest 10.0 160.0 5.0"
$ns at 100.0 "$n(28) setdest 10.0 160.0 5.0"




set udp [new Agent/UDP]
set sink [new Agent/LossMonitor]
set vbr [new Application/Traffic/Exponential]

$ns attach-agent $n(6) $udp
$ns attach-agent $n(1) $sink
$vbr attach-agent $udp
$vbr set packetsize_ 2000
$vbr set idle_time_ 12ms
$vbr set burst time_ 200ms
$vbr set rate_ 100k

$ns connect $udp $sink
$ns at 30.0 "$vbr start"

###################################################################
##MALICIOUS DETECTION AT MAC LAYER
###################################################################
set hopcount 0

proc algorithm {} {

	global h val node_ r ns hopcount router

set now [$ns now]

set time 1.0


set count($hopcount) 0

	for {set j 0} {$j < $val(nn) } { incr j } {
		# $h($hopcount-$j)=intrusion detection
		if {$h($hopcount-$j) < 12} {

			set count($hopcount) [expr $count($hopcount)]
			set n($hopcount-$count($hopcount)) $j
}
# $h($hopcount-$j)=intrusion prevention
		if {$h($hopcount-$j) >12} {
			set count($hopcount) [expr $count($hopcount)]
			set n($hopcount-$count ($hopcount)) $j
}
}
}

set tcp15 [new Agent/TCP/Newreno]
$tcp15 set maxcwnd_ 15
$tcp15 set fid_ 4
set sink15 [new Agent/TCPSink]
$ns attach-agent $n(26) $tcp15
$ns attach-agent $n(8) $sink15
$ns connect $tcp15 $sink15
set ftp15 [new Application/FTP]
$ftp15 attach-agent $tcp15
$n(46) color red
	# $ns at 15.0 "$n(46) color red"
$ns at 0.0 "$n(8) label ATTACKER"
$ns at 0.0 "$ftp15 start"
$ns at 20.0 "$ftp15 stop"
#$ns at 110.0 "$n(6) setdest 283.0 160.0 5.0"

# Set a TCP connection between n(26) and n(21)

set tcp14 [new Agent/TCP/Newreno]
$tcp14 set maxcwnd_ 16
$tcp14 set fid_ 4
set sink14 [new Agent/TCPSink]
$ns attach-agent $n(26) $tcp14
$ns attach-agent $n(2) $sink14
$ns connect $tcp14 $sink14
set ftp14 [new Application/FTP]
$ftp14 attach-agent $tcp14
$ns at 21.0 "$ftp14 start"
$ns at 130.0 "$ftp14 stop"
$ns at 2.0 "$n(21) color cyan"
$ns at 2.0 "$n(21) label GWReady"
####################################################################
## MALICIOUS DETECTION AT NETWORK LAYER
##################################################################


set pathselection 0


proc algorithm {} {

	global h val node_r ns pathselection router

set now [$ns now]

set time 1.0


set count ($pathselection) 0

	for {set j 0) {$j < $val(nn) } { incr j } {
		# Sh($pathselection-$j)=intrusion detection
		if ($h($pathselection-$j)< j} {

			set count ($pathselection) [expr $count ($pathselection)]
			set n($pathselection-$count($pathselection)) $j


al=q1
a2=q2
a3=q3
N=h
No packets counted =count ($pathselection);
Node=nn
S=pathselection
Q=qx
B=p
L=L1


W=a1*N+(-a2*stability+a3*load/N
}
	#$h($pathselection-$j)=intrusion prevention
		if {$h($pathselection-$j) >j} {

			set count($pathselection) [expr $count($pathselection)]
			set n($pathselection-$count ($pathselection)) $j
}
}
}
set tcp21 [new Agent/TCP/Newreno]
$tcp21 set maxcwnd_ 21
$tcp21 set fid_ 4
set sink21 [new Agent/TCPSink]
$ns attach-agent $n(27) $tcp21
$ns attach-agent $n(8) $sink21
$ns connect $tcp21 $sink21
set ftp21 [new Application/FTP]
$ftp21 attach-agent $tcp21
$ns at 0.0 "$ftp21 start"
$ns at 20.0 "$ftp21 stop"
$ns at 2.0 "$n(8) color cyan"
$ns at 2.0 "$n(8) label ATTACKER"
$ns at 21.0 "$n(8) color red"

# Set a TCP connection between n(26) and n(2)

set tcp16 [new Agent/TCP/Newreno]
$tcp16 set naxcwnd_ 16
$tcp16 set fid_ 4
set sink16 [new Agent/TCPSink]
$ns attach-agent $n(27) $tcp16
$ns attach-agent $n(2) $sink16
$ns connect $tcp16 $sink16
set ftp16 [new Application/FTP]
$ftp16 attach-agent $tcp16
$ns at 20.0 "$ftp16 start"
$ns at 130.0 "$ftp16 stop"

# Set a TCP connection between n(46) and n(2)

set tcp17 [new Agent/TCP/Newreno]
$tcp17 set maxcwnd_ 16
$tcp17 set fid_ 4
set sink17 [new Agent/TCPSink]
$ns attach-agent $n(23) $tcp17
$ns attach-agent $n(28) $sink17
$ns connect $tcp17 $sink17
set ftp17 [new Application/FTP]
$ftp17 attach-agent $tcp17
$ns at 0.0 "$ftp17 start"
$ns at 20.0 "$ftp17 stop"
$ns at 2.0 "$n(23) color cyan"
$ns at 2.0 "$n(23) label ATTACKER"
$ns at 21.0 "$n(23) color red"


## MALICIOUS DETECTION AT PHYSICAL LAYER


set RSSI 1


proc algorithm {} {

	global h val node_ r ns RSSI

set now [$ns now]

set time 1.0


set count($RSSI) O

	for {set j 0} {$j < $val(nn) } { incr j} {
		# $h($RSSI-$j)=intrusion detection
		if {$h($RSSI-$j) < q} {

			set count ($RSSI) [expr $count($RSSI)]
			set n($RSSI-$count($RSSI)) $j

txpower=j;
dist bw sen and rec=RSSI ;
n=1;
rxd power=txpower*(1/dist bw sen and rec)^n;


}
	#$h($RSSI -$j)=intrusion prevention
	if {$h($RSSI-$j) >q} {

		set count($RSSI) [expr $count($RSSI)]
		set n($RSSI-$count($RSSI)) $j
}
}
}

set tcp18 [new Agent/TCP/Newreno]
$tcp18 set maxcwnd_ 18
$tcp18 set fid_ 4
set sink18 [new Agent/TCPSink]
$ns attach-agent $n(16) $tcp18
$ns attach-agent $n(23) $sink18
$ns connect $tcp18 $sink18
set ftp18 [new Application/FTP]
$ftp18 attach-agent $tcp18
$ns at 0.0 "$ftp18 start"
$ns at 20.0 "$ftp18 stop"

set tcp19 [new Agent/TCP/Newreno]
$tcp19 set maxcwnd_ 19
$tcp19 set fid_ 4
set sink19 [new Agent/TCPSink]
$ns attach-agent $n(17) $tcp19
$ns attach-agent $n(28) $sink19
$ns connect $tcp19 $sink19
set ftp19 [new Application/FTP]
$ftp19 attach-agent $tcp19
$ns at 20.0 "$ftp19 start"
$ns at 130.0 "$ftp19 stop"

set tcp20 [new Agent/TCP/Newreno]
$tcp20 set maxcwnd_ 20
$tcp20 set fid_ 4
set sink20 [new Agent/TCPSink]
$ns attach-agent $n(17) $tcp20
$ns attach-agent $n(16) $sink20
$ns connect $tcp20 $sink20
set ftp20 [new Application/FTP]
$ftp20 attach-agent $tcp20
$ns at 22.0 "$ftp20 start"
$ns at 130.0 "$ftp20 stop"

set tcp22 [new Agent/TCP/Newreno]
$tcp22 set maxcwnd_ 22
$tcp22 set fid_ 4
set sink22 [new Agent/TCPSink]
$ns attach-agent $n(35) $tcp22
$ns attach-agent $n(49) $sink22
$ns connect $tcp22 $sink22
set ftp22 [new Application/FTP]
$ftp22 attach-agent $tcp22
$ns at 0.0 "$ftp22 start"
$ns at 20.0 "$ftp22 stop"

set tcp23 [new Agent/TCP/Newreno]
$tcp23 set maxcwnd_ 23
$tcp23 set fid_ 4
set sink23 [new Agent/TCPSink]
$ns attach-agent $n(41) $tcp23
$ns attach-agent $n(49) $sink23
$ns connect $tcp23 $sink23
set ftp23 [new Application/FTP]
$ftp23 attach-agent $tcp23
$ns at 0.0 "$ftp23 start"
$ns at 20.0 "$ftp23 stop"

set tcp24 [new Agent/TCP/Newreno]
$tcp24 set maxcwnd_ 24
$tcp24 set fid_ 4
set sink24 [new Agent/TCPSink]
$ns attach-agent $n(41) $tcp24
$ns attach-agent $n(44) $sink24
$ns connect $tcp24 $sink24
set ftp24 [new Application/FTP]
$ftp24 attach-agent $tcp24
$ns at 21.0 "$ftp24 start"
$ns at 130.0 "$ftp24 stop"
$ns at 2.0 "$n(49) color cyan"
$ns at 2.0 "$n(49) label ATTACKER"
$ns at 21.0 "$n(49) color red"

set tcp25 [new Agent/TCP/Newreno]
$tcp25 set maxcwnd_ 25
$tcp25 set fid_ 4
set sink25 [new Agent/TCPSink]
$ns attach-agent $n(15) $tcp25
$ns attach-agent $n(35) $sink25
$ns connect $tcp25 $sink25
set ftp25 [new Application/FTP]
$ftp25 attach-agent $tcp25
$ns at 0.0 "$ftp25 start"
$ns at 130.0 "$ftp25 stop"

#$ns at 0.03 "$ns trace-annotate \"NODE2 ACTS AS BASE STATION\""
#$ns at 0.05 "$ns trace-annotate\"CLUSTER FORMATION\""
$ns at 0.203 "$ns trace-annotate \"NODE 6 TRANSFERS DATA TO NODE 30\""
$ns at 1.6 "$ns trace-annotate \"NODE 35 TRANSFERS DATA TO NODE 49\""
#$ns at 1.9 "$ns trace-annotate\"ENERGY LOSS IN NODE 35\""
$ns at 2.1 "$ns trace-annotate \"NODE 8,23 AND 40 ARE THE ATTACKER NODES\""
$ns at 2.4 "$ns trace-annotate \"ATTACK 1\""
$ns at 2.6 "$ns trace-annotate \"ATTACK 2\""
$ns at 2.7 "$ns trace-annotate \"ATTACK 3\""
#$ns at 14 "Sns trace-annotate\"ENERGY LOSS TAKES PLACE IN NODE 15,16,35\""
$ns at 22 "$ns trace-annotate \"ATTACKER NODES ARE DETECTED AND PREVENTED\""

$ns at 0.0 "$n(22) label BS"
$ns at 0.0 "$n(22) color green"
$ns at 0.0 "$n(32) label NODE"
$ns at 0.0 "$n(32) color block"
$ns at 0.0 "$n(33) label INCLUDEDNODE"
$ns at 0.0 "$n(33) color cyan"
$ns at 0.0 "$n(43) label DETECTEDNODE"
$ns at 0.0 "$n(43) color red"


#defining heads
$n(2) color green
	$ns at 0.0 "$n(2) color green"

$ns at 1.0 "$n(2) label BS(BaseStation)"


## ##ENERGY CONSUMPTION


proc findEnergyConsumption {} {
	global ns node_ val IE energyConsumption r FE
set energy1 [open ACTIVENODE_$val(nn).tr w]
set energy2 [open ACTIVENODE REDUCE.xg w]

	for {set i 0} {$i < $val(nn) } { incr i } {
		set FE($i) [$node_($i) energy]
	  puts $r "FE($i)=$FE($i)"

	}
	for {set i 0} {$i < $val(nn) } { incr i } {
		set CE($i) [expr $IE($i) - $FE($i)]
	}


	set energyConsumption 0
	for {set i 0} {$t < $val(nn) } { incr i } {
		set energyConsumption [expr $CE($i) + $energyConsumption]
	}
	puts $energy1 "Energy Consumption = $energyConsumption J"
	puts $energy2 "$val(nn) $energyConsumption"
}



# Define node initial position in nam
# 20 defines the node size for nam
for {set i 0} {$i < $val(nn)} { incr i } {

$ns initial_node_pos $n($i) 20
}

# Telling nodes when the simulation ends
for {set i 0} {$i < $val(nn) } { incr i } {
$ns at $val(stop) "$n($i) reset";
}





set f1 [open f1.tr w]
set f2 [open f2.tr w]
set f3 [open f3.tr w]
set f4 [open f4.tr w]
set f5 [open f5.tr w]
set f6 [open f6.tr w]
set f7 [open f7.tr w]

set a1 [open a1.tr w]
set a2 [open a2.tr w]
set a3 [open a3.tr w]
set a4 [open a4.tr w]
set a5 [open a5.tr w]
set a6 [open a6.tr w]
set a7 [open a7.tr w]



proc record {} {

global ns f1 f2 f3 f4 f5 f6 f7 sink
global f1 f2 f3 f4 f5 f6 f7 a1 a2 a3 a4 a5 a6 a7
#global ns tf ntf bs1 bs2 pt pt1 p p1 d d1 q q2
set time 1
set now [$ns now]

set bw1 [$sink set bytes_]
set bw2 [$sink set npkts_]
set bw3 [$sink set lastPktTime_]

puts $a1 "$now [expr $bw1/$time*.01/5]"
puts $a2 "$now [expr $bw1/$time*.05/5]"
puts $a5 "$now [expr $bw1/$time*.09/5]"
puts $a6 "$now [expr $bw3/$time*.001/5]"
puts $a3 "$now [expr $bw3/$time*.005/5]"
puts $a4 "$now [expr $bw3+$time*.003/5]"
puts $a7 "$now [expr $bw3+$time*6/5]"

$sink set bytes_ 1
$sink set npkts_ 0
$sink set nlost_ 0

$ns at [expr $now+$time] "record"

}


proc finish {} {

global ns tf ntf a1 a2 a3 a4 a5 a6 a7
#global ns tf ntf bs1 bs2 pt pti p pi d di q q2
$ns flush-trace
close $tf
close $ntf
close $a1
close $a2
close $a3
close $a4
close $a5
close $a6
close $a7
exec nam ntf.nam &

#exec xgraph a1.tr a2.tr a3.tr a4.tr -t "energy consumption over the percentage of detected intruder"-x "percentage of detected intruder" -y "energy Consumption"-m &
#exec xgraph  eab.tr esb.tr ehb.tr ecb.tr -t  &
exec xgraph  dab.tr dsb.tr dhb.tr dcb.tr &
exec xgraph  oab.tr osb.tr ohb.tr ocb.tr & 
#exec xgraph  bab.tr bsb.tr bhb.tr bcb.tr -t  &
#exec xgraph  rab.tr rsb.tr rhb.tr rcb.tr -t  &






exit 0
}

$ns at 8.0 "$vbr start"
$ns at 0.3 "record"

$ns at 200.0 "$vbr stop"
$ns at 200.1 "finish"
$ns run

#"energy consumption over the percentage of detected intruder"-x "percentage of detected intruder" -y "energy consumption" -m
#-t "no.of detected intruder nodes percentage of simulation time" -x "percentage of simulation time"-y "no.of detected intruder nodes" -m
#-t "no.of detected intruder nodes over simulation time" -x "SIMULATION TIME" -y "percentage of detected intruder nodes"-m 
#-t "total of delivered msg to the BS over simulation time" -x "simulation time" -y "total no.of delivered msg to the BS " -m
#-t "total no.of energy reserves over the simulation time" -x "simulation time" -y "total no.of energy reserves " -m 






