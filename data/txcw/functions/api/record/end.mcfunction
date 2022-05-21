#> txcw:api/record/end
#
# カメラワークの記録を終了する
# 
# @output storage txcw:api record カメラワークのデータ。記録するたびに上書きされてしまうので、別の場所にコピーすること。
# @api

execute if entity @s[tag=!txcw.record] run tellraw @s ["記録が開始していないか、記録はすでに終了しています。"]
execute if entity @s[tag=txcw.record,tag=txcw.ui] run tellraw @s ["/function txcw:api/ui/end を用いUIごと終了してください"]
execute if entity @s[tag=txcw.record,tag=!txcw.ui] run function txcw:core/record/end
