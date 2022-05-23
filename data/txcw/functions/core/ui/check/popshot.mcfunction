execute if entity @s[tag=!txcw.ui] run tellraw @s ["記録が開始していないか、記録はすでに終了しています。"]
execute if entity @s[tag=txcw.ui] run function txcw:core/ui/popshot
