
# 座標の補間
data modify storage txcw:core bezier.3d set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.pos
function txcw:core/bezier/eval
data modify entity @s Pos set from storage txcw:core bezier.3dp

# 角度の補間
data modify storage txcw:core bezier.3d set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.rot
function txcw:core/bezier/2d/eval
execute store result entity @s Rotation[0] float 0.01 run data get storage txcw:core bezier.2dp[0]
execute store result entity @s Rotation[1] float 0.01 run data get storage txcw:core bezier.2dp[1]

execute at @s run tp @s ~ ~ ~

# 次tickでも起動する
schedule function txcw:core/camera/tick/ 1 replace
