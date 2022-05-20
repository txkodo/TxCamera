scoreboard players operation $t_ txcw = $t txcw

execute store result score $p txcw run function txcw:core/bezier/3d.mag
scoreboard players operation $p_ txcw = $p txcw
scoreboard players set $ txcw 100000
scoreboard players operation $ txcw /= $p txcw
scoreboard players operation $t txcw += $ txcw

execute store result score $p txcw run function txcw:core/bezier/3d.mag
scoreboard players operation $p_ txcw += $p txcw
scoreboard players operation $p_ txcw /= $2 txcw
scoreboard players set $ txcw 100000
scoreboard players operation $ txcw /= $p_ txcw
scoreboard players operation $t_ txcw += $ txcw
scoreboard players operation $t txcw = $t_ txcw

function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame
