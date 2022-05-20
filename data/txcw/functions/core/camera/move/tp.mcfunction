
# 座標の補間
data modify storage txcw:core bezier.3d set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].pos
function txcw:core/bezier/eval
data modify entity @s Pos set from storage txcw:core bezier.3dp
# execute store result score #tp0 txcw run data get storage txcw:core bezier.3dp[0] 100
# execute store result score #tp1 txcw run data get storage txcw:core bezier.3dp[1] 100
# execute store result score #tp2 txcw run data get storage txcw:core bezier.3dp[2] 100

# 角度の補間
data modify storage txcw:core bezier.3d set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].rot
function txcw:core/bezier/eval

# 角度に座標を加算
# execute store result score #3 txcw run data get storage txcw:core bezier.3dp[0] 100
# execute store result storage txcw:core bezier.3dp[0] double 0.01 run scoreboard players operation #3 txcw += #tp0 txcw
# execute store result score #3 txcw run data get storage txcw:core bezier.3dp[1] 100
# execute store result storage txcw:core bezier.3dp[1] double 0.01 run scoreboard players operation #3 txcw += #tp1 txcw
# execute store result score #3 txcw run data get storage txcw:core bezier.3dp[2] 100
# execute store result storage txcw:core bezier.3dp[2] double 0.01 run scoreboard players operation #3 txcw += #tp2 txcw

execute at @s run function txcw:core/camera/move/tp.at

# 次tickでも起動する
schedule function txcw:core/camera/tick/ 1 replace
