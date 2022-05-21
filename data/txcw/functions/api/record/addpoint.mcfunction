#> txcw:api/record/addpoint
#
# 経由点を追加する
#
# @input storage txcw:api point.pos : [0d,0d,0d]
# @input storage txcw:api point.rot : [0f,0f]
# @input storage txcw:api point.speed : 0
# @api

execute if entity @s[tag=!txcw.record] run tellraw @s ["記録が開始していないか、記録はすでに終了しています。"]
execute if entity @s[tag=txcw.record] run function txcw:core/record/addpoint/
