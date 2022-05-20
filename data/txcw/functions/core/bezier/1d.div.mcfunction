#> txcw:core/bezier/1d.div
#
# @input
#     score $x1 txcw 0...1000
#     score $x2 txcw 0...1000
#     score $x3 txcw 0...1000
#     score $x4 txcw 0...1000
#     score $t txcw 0...1000

scoreboard players set $s^2 txcw 1000 
execute store result score $st txcw run scoreboard players operation $s^2 txcw -= $t txcw
scoreboard players operation $st txcw *= $t txcw
scoreboard players operation $st txcw /= $1000 txcw

scoreboard players operation $s^2 txcw *= $s^2 txcw
scoreboard players operation $s^2 txcw /= $1000 txcw

scoreboard players operation $t^2 txcw = $t txcw
scoreboard players operation $t^2 txcw *= $t txcw
scoreboard players operation $t^2 txcw /= $1000 txcw

scoreboard players operation $x1 txcw -= $x2 txcw
execute store result score $y txcw run scoreboard players operation $x1 txcw *= $s^2 txcw

scoreboard players operation $st txcw *= $-2 txcw
scoreboard players operation $st txcw += $t^2 txcw
scoreboard players operation $x3 txcw -= $x2 txcw
scoreboard players operation $st txcw *= $x3 txcw
scoreboard players operation $y txcw += $st txcw

scoreboard players operation $x2 txcw -= $x4 txcw
scoreboard players operation $x2 txcw *= $t^2 txcw
scoreboard players operation $y txcw += $x2 txcw

scoreboard players operation $y txcw /= $1000 txcw
scoreboard players operation $y txcw *= $-3 txcw
