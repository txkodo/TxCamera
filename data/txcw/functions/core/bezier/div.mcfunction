#> txcw:core/bezier/div
#
# ベジエ曲線のパラメータtでの長さの微分値を返す
#
# @input
#     storage txcw:core bezier.3d.p1 [0d,0d,0d]
#     storage txcw:core bezier.3d.p2 [0d,0d,0d]
#     storage txcw:core bezier.3d.p3 [0d,0d,0d]
#     storage txcw:core bezier.3d.p4 [0d,0d,0d]
#     score $t txcw 0...1000

scoreboard players set $m txcw 0

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.p1[0]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.p2[0]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.p3[0]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.p4[0]
function txcw:core/bezier/1d.div
scoreboard players operation $y txcw *= $y txcw
scoreboard players operation $m txcw += $y txcw

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.p1[1]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.p2[1]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.p3[1]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.p4[1]
function txcw:core/bezier/1d.div
scoreboard players operation $y txcw *= $y txcw
scoreboard players operation $m txcw += $y txcw

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.p1[2]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.p2[2]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.p3[2]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.p4[2]
function txcw:core/bezier/1d.div
scoreboard players operation $y txcw *= $y txcw
scoreboard players operation $m txcw += $y txcw

execute store result storage math: in double 1 run scoreboard players get $m txcw
function math:sqrt/
data get storage math: out

