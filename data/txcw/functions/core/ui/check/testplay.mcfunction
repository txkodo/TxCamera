execute if entity @s[tag=!txcw.ui] run tellraw @s ["記録が開始していないか、記録はすでに終了しています。"]
execute if entity @s[tag=txcw.ui,tag=txcw.camera_] run tellraw @s ["カメラワーク再生中です"]
execute if entity @s[tag=txcw.ui,tag=!txcw.camera_] run function txcw:core/ui/testplay
