#> txcw:core/bezier/3d
#
# @input
#     storage txcw:core bezier.3d.p1 [0d,0d,0d]
#     storage txcw:core bezier.3d.p2 [0d,0d,0d]
#     storage txcw:core bezier.3d.p3 [0d,0d,0d]
#     storage txcw:core bezier.3d.p4 [0d,0d,0d]
#     score $t txcw 0...1000
#
# @output
#     storage txcw:core bezier.3dp [0d,0d,0d]

data modify storage txcw:core bezier.3dp set value [0d,0d,0d]

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.p1[0]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.p2[0]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.p3[0]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.p4[0]
execute store result storage txcw:core bezier.3dp[0] double 0.01 store result score $0 txcw run function txcw:core/bezier/1d

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.p1[1]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.p2[1]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.p3[1]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.p4[1]
execute store result storage txcw:core bezier.3dp[1] double 0.01 store result score $1 txcw run function txcw:core/bezier/1d

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.p1[2]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.p2[2]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.p3[2]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.p4[2]
execute store result storage txcw:core bezier.3dp[2] double 0.01 store result score $2 txcw run function txcw:core/bezier/1d

data modify storage txcw:core bezier.3d.v set value [0d,0d,0d]

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.v1[0]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.v2[0]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.v3[0]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.v4[0]
execute store result score $3 txcw run function txcw:core/bezier/1d
execute store result storage txcw:core bezier.3d.v[0] double 0.01 run scoreboard players operation $3 txcw += $0 txcw

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.v1[1]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.v2[1]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.v3[1]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.v4[1]
execute store result score $3 txcw run function txcw:core/bezier/1d
execute store result storage txcw:core bezier.3d.v[1] double 0.01 run scoreboard players operation $3 txcw += $1 txcw

execute store result score $x1 txcw run data get storage txcw:core bezier.3d.v1[2]
execute store result score $x2 txcw run data get storage txcw:core bezier.3d.v2[2]
execute store result score $x3 txcw run data get storage txcw:core bezier.3d.v3[2]
execute store result score $x4 txcw run data get storage txcw:core bezier.3d.v4[2]
execute store result score $3 txcw run function txcw:core/bezier/1d
execute store result storage txcw:core bezier.3d.v[2] double 0.01 run scoreboard players operation $3 txcw += $2 txcw
