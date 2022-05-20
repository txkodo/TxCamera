function txcw:core/thread/please/
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2] set value {}
data modify storage txcw:thread id append value 0
execute store result storage txcw:thread id[-1] int 1 run scoreboard players get @s txcw.id
scoreboard players reset @s txcw.id
