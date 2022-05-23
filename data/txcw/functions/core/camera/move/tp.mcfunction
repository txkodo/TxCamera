
# 座標の補間
data modify storage txcw:core bezier.3d set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.pos
function txcw:core/bezier/eval
data modify entity @s Pos set from storage txcw:core bezier.3dp

# 角度の補間
data modify storage txcw:core bezier.2d set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.rot
function txcw:core/bezier/2d/eval
execute store result entity @s Rotation[0] float 0.01 run data get storage txcw:core bezier.2dp[0]
execute store result entity @s Rotation[1] float 0.01 run data get storage txcw:core bezier.2dp[1]

execute at @s run tp @s ~ ~ ~

execute at @s run tp @e[type=!player,tag=txcw.active] ~ ~ ~ ~ ~


# 次tickでも起動する
execute store result storage txcw:core _ byte 1 if entity @e[tag=!txcw.anchor,tag=txcw.active]
execute if data storage txcw:core {_:0b} run function txcw:core/camera/move/abort
execute if data storage txcw:core {_:1b} run schedule function txcw:core/camera/tick/ 1 replace
