#> txcw:api/record/addpoint
# @input storage txcw:api point.pos : [0d,0d,0d]
# @input storage txcw:api point.rot : [0f,0f]
# @input storage txcw:api point.speed : 0
# @input storage txcw:api point.split.pos : [0d,0d,0d] 任意 座標が連続しない場合の変化後の座標
# @input storage txcw:api point.split.rot : [0f,0f] 任意 角度が連続しない場合の変化後の角度
# @input storage txcw:api point.split.speed : 0 任意 速度が連続しない場合の変化後の速度
# @api

execute if entity @s[tag=!txcw.record] run tellraw @s ["記録が開始していないか、記録はすでに終了しています。"]
execute if entity @s[tag=txcw.record] run function txcw:core/record/addpoint/
