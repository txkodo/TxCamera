# $spanの長さ進んだ位置のパラメータを算出
scoreboard players operation $t_ txcw = $t txcw
execute store result score $p txcw run function txcw:core/bezier/div
scoreboard players operation $p_ txcw = $p txcw
scoreboard players set $ txcw 1000
scoreboard players operation $ txcw *= $span txcw
scoreboard players operation $ txcw *= $-1 txcw
scoreboard players operation $ txcw /= $p txcw
scoreboard players operation $ txcw *= $-1 txcw
scoreboard players operation $t txcw += $ txcw


execute store result score $p txcw run function txcw:core/bezier/div
scoreboard players operation $p_ txcw += $p txcw
scoreboard players operation $p_ txcw /= $2 txcw
scoreboard players set $ txcw 1000
scoreboard players operation $ txcw *= $span txcw
scoreboard players operation $ txcw *= $-1 txcw
scoreboard players operation $ txcw /= $p_ txcw
scoreboard players operation $ txcw *= $-1 txcw
scoreboard players operation $t_ txcw += $ txcw
scoreboard players operation $t txcw = $t_ txcw

# パラメータが1000以上(区間外)で次のセグメントが存在している場合、次のセグメントに移動
data modify storage txcw:core next set value 1b
execute store success storage txcw:core next byte 0 if score $t txcw matches 1000.. unless data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.knots[2]
execute if score $t txcw matches 1000.. if data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.knots[2] run function txcw:core/camera/move/next
