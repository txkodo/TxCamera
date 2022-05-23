# 次のセグメントに移動

# 制御点情報を更新
data remove storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.knots[0]
function txcw:core/camera/move/load

scoreboard players remove $t txcw 1000
scoreboard players operation $p_ txcw *= $t txcw
execute store result score $span txcw run scoreboard players operation $p_ txcw /= #1000 txcw

scoreboard players set $t txcw 0
function txcw:core/camera/move/update
