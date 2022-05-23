#> txcw:core/linear/1d/eval
#
# 線分のパラメータtでの値を評価して返す
#
# @input
#     storage txcw:core bezier.1d.in.p1 0d
#     storage txcw:core bezier.1d.in.p2 0d
#     storage txcw:core bezier.1d.in.p3 0d
#     storage txcw:core bezier.1d.in.p4 0d
#     score $t txcw 0...1000
#
# @output
#     storage txcw:core bezier.1d.out.p 0d

execute store result score $x1 txcw run data get storage txcw:core linear.1d.in.p1
execute store result score $x2 txcw run data get storage txcw:core linear.1d.in.p2



scoreboard players set $y txcw 1000
scoreboard players operation $y txcw -= $t txcw

scoreboard players operation $y txcw *= $x1 txcw
scoreboard players operation $x2 txcw *= $t txcw
scoreboard players operation $y txcw += $x2 txcw
execute store result storage txcw:core linear.1d.out.p int 1 run scoreboard players operation $y txcw /= #1000 txcw