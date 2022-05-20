# ニンジン棒クリック時
execute if entity @s[tag=!txcw.ui] run tellraw @s "記録が開始していないか、すでに終了しています"
execute if entity @s[tag=txcw.ui] run function txcw:core/thread/please/

execute if data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui{phase:"pos"} run function txcw:core/record/ui/auto/setpos
execute if data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui{phase:"speed"} run function txcw:core/record/ui/auto/setspeed
