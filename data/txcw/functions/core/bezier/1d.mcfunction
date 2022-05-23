#> txcw:core/bezier/1d
#
# @input
#     score $x1 txcw 0...1000
#     score $x2 txcw 0...1000
#     score $x3 txcw 0...1000
#     score $x4 txcw 0...1000
#     score $t txcw 0...1000

scoreboard players set $s txcw 1000
scoreboard players operation $s txcw -= $t txcw

scoreboard players operation $x2 txcw -= $x1 txcw
scoreboard players operation $x2 txcw *= $s txcw
scoreboard players operation $x2 txcw /= #1000 txcw
scoreboard players operation $x2 txcw *= $s txcw
execute store result score $y txcw run scoreboard players operation $x2 txcw *= #3 txcw

scoreboard players operation $x3 txcw -= $x1 txcw
scoreboard players operation $x3 txcw *= $s txcw
scoreboard players operation $x3 txcw /= #1000 txcw
scoreboard players operation $x3 txcw *= $t txcw
scoreboard players operation $x3 txcw *= #3 txcw
scoreboard players operation $y txcw += $x3 txcw

scoreboard players operation $x4 txcw -= $x1 txcw
scoreboard players operation $x4 txcw *= $t txcw
scoreboard players operation $x4 txcw /= #1000 txcw
scoreboard players operation $x4 txcw *= $t txcw
scoreboard players operation $y txcw += $x4 txcw

scoreboard players operation $y txcw /= #1000 txcw
scoreboard players operation $y txcw *= $t txcw
scoreboard players operation $y txcw /= #1000 txcw

scoreboard players operation $y txcw += $x1 txcw
