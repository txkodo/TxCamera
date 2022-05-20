execute if entity @s[tag=!txcw.record] run tellraw @s ["記録が開始していないか、記録はすでに終了しています。"]
execute if entity @s[tag=txcw.record,tag=txcw.ui] run tellraw @s ["/function txcw:api/ui/end を用いUIごと終了してください"]
execute if entity @s[tag=txcw.record,tag=!txcw.ui] run function txcw:core/record/end
