scoreboard players set $t txcw 476
scoreboard players set $x1 txcw -4400
scoreboard players set $x2 txcw -3000
scoreboard players set $x3 txcw -3000
scoreboard players set $x4 txcw -4400
function txcw:core/bezier/1d.div

tellraw @a ["$y:",{ "score": { "name": "$y","objective": "txcw"}}]

# scoreboard players set $t txcw 476
# execute store result score $p txcw run function txcw:core/bezier/3d.mag
# scoreboard players set $ txcw 300000
# scoreboard players operation $ txcw /= $p txcw
# scoreboard players operation $t txcw += $ txcw
