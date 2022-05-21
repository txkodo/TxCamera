#> txcw:core/bezier/1d/eval
#
# ベジエ曲線のパラメータtでの値を評価して返す
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

execute store result score $x1 txcw run data get storage txcw:core bezier.1d.in.p1
execute store result score $x2 txcw run data get storage txcw:core bezier.1d.in.p2
execute store result score $x3 txcw run data get storage txcw:core bezier.1d.in.p3
execute store result score $x4 txcw run data get storage txcw:core bezier.1d.in.p4

execute store result storage txcw:core bezier.1d.out.p int 1 run function txcw:core/bezier/1d