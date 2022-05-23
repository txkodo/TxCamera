#> txcw:core/bezier/2d/eval
#
# ベジエ曲線のパラメータtでの座標を評価して返す
#
# @input
#     storage txcw:core bezier.2d.p1 [0,0]
#     storage txcw:core bezier.2d.p2 [0,0]
#     storage txcw:core bezier.2d.p3 [0,0]
#     storage txcw:core bezier.2d.p4 [0,0]
#     score $t txcw 0...1000
#
# @output
#     storage txcw:core bezier.2dp [0,0]

data modify storage txcw:core bezier.2dp set value [0,0]

execute store result score $x1 txcw run data get storage txcw:core bezier.2d.p1[0]
execute store result score $x2 txcw run data get storage txcw:core bezier.2d.p2[0]
execute store result score $x3 txcw run data get storage txcw:core bezier.2d.p3[0]
execute store result score $x4 txcw run data get storage txcw:core bezier.2d.p4[0]
execute store result storage txcw:core bezier.2dp[0] int 1 store result score $0 txcw run function txcw:core/bezier/1d

execute store result score $x1 txcw run data get storage txcw:core bezier.2d.p1[1]
execute store result score $x2 txcw run data get storage txcw:core bezier.2d.p2[1]
execute store result score $x3 txcw run data get storage txcw:core bezier.2d.p3[1]
execute store result score $x4 txcw run data get storage txcw:core bezier.2d.p4[1]
execute store result storage txcw:core bezier.2dp[1] int 1 store result score $1 txcw run function txcw:core/bezier/1d
