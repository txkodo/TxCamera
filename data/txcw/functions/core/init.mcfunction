#declare objective txcw 
scoreboard objectives remove txcw
scoreboard objectives add txcw dummy

#declare score_holder $x1 
#declare score_holder $x2 
#declare score_holder $x3 
#declare score_holder $x4 
#declare score_holder $s
#declare score_holder $s^2
#declare score_holder $t
#declare score_holder $t^2
#declare score_holder $st
#declare score_holder $
#declare score_holder $y
#declare score_holder $m

#declare score_holder $tick

#declare score_holder $span
#declare score_holder $speed

#declare score_holder #0
#declare score_holder #1
#declare score_holder #2
#declare score_holder #3
#declare score_holder #4

#declare score_holder $-1
scoreboard players set $-1 txcw -1

#declare score_holder $3
scoreboard players set $3 txcw 3
#declare score_holder $-3
scoreboard players set $-3 txcw -3

#declare score_holder $2
scoreboard players set $2 txcw 2
#declare score_holder $-2
scoreboard players set $-2 txcw -2

#declare score_holder $4
scoreboard players set $4 txcw 4
#declare score_holder $-4
scoreboard players set $-4 txcw -4

#declare score_holder $6
scoreboard players set $6 txcw 6
#declare score_holder $-6
scoreboard players set $-6 txcw -6

#declare score_holder $36000
scoreboard players set $36000 txcw 36000

#declare score_holder $1000
scoreboard players set $1000 txcw 1000

#declare storage txcw:core
data modify storage txcw:core active set value {}
data merge storage txcw:core {version:1,bezier:{3d:{p1:[0,0,0],p2:[0,0,0],p3:[0,0,0],p4:[0,0,0]},1d:{p1:0,p2:0,p3:0,p4:0}}}
data merge storage txcw:core {next:0b,}
data merge storage txcw:core {record:{knots:[]}}

scoreboard objectives add AiMath dummy

function txcw:core/thread/init/