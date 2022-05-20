
#declare storage txcw:thread
# 2
data modify storage txcw:thread tree set value [[],[]]
# 4
data modify storage txcw:thread tree[] set value [[],[]]
# 8
data modify storage txcw:thread tree[][] set value [[],[]]
# 16
data modify storage txcw:thread tree[][][] set value [[],[]]
# 32
data modify storage txcw:thread tree[][][][] set value [[],[]]
# 64
data modify storage txcw:thread tree[][][][][] set value [[],[]]
# 128
data modify storage txcw:thread tree[][][][][][] set value [[],[]]
# 256
data modify storage txcw:thread tree[][][][][][][] set value [[],[]]
# 512
data modify storage txcw:thread tree[][][][][][][][] set value [{},{}]

#declare objective txcw.id
scoreboard objectives remove txcw.id
scoreboard objectives add txcw.id dummy

data modify storage txcw:thread id set value [511]
function txcw:core/thread/init/loop
