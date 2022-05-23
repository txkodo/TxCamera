#> txcw:api/record/poppoint
#
# 最後の経由点を削除する
#
# @api

execute if entity @s[tag=!txcw.record] run tellraw @s ["記録が開始していないか、記録はすでに終了しています。"]
execute if entity @s[tag=txcw.record] run function txcw:core/record/poppoint/
