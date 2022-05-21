schedule function txcw:core/ui/auto/tick 1 replace

function txcw:core/thread/please/

data modify storage txcw:core temp.slot set value {0:0,1:0}
data modify storage txcw:core temp.slot.0 set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui.slot
data modify storage txcw:core temp.slot.1 set from entity @s SelectedItemSlot
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui.speed

scoreboard players set $$ txcw 10
execute if entity @s[predicate=txcw:core/sneeking] run scoreboard players set $$ txcw 1

execute if data storage txcw:core temp{slot:{0:4,1:5}} run scoreboard players operation $ txcw += $$ txcw
execute if data storage txcw:core temp{slot:{0:5,1:6}} run scoreboard players operation $ txcw += $$ txcw
execute if data storage txcw:core temp{slot:{0:6,1:7}} run scoreboard players operation $ txcw += $$ txcw
execute if data storage txcw:core temp{slot:{0:7,1:8}} run scoreboard players operation $ txcw += $$ txcw
execute if data storage txcw:core temp{slot:{0:8,1:0}} run scoreboard players operation $ txcw += $$ txcw

execute if data storage txcw:core temp{slot:{0:4,1:3}} run scoreboard players operation $ txcw -= $$ txcw
execute if data storage txcw:core temp{slot:{0:3,1:2}} run scoreboard players operation $ txcw -= $$ txcw
execute if data storage txcw:core temp{slot:{0:2,1:1}} run scoreboard players operation $ txcw -= $$ txcw
execute if data storage txcw:core temp{slot:{0:1,1:0}} run scoreboard players operation $ txcw -= $$ txcw
execute if data storage txcw:core temp{slot:{0:0,1:8}} run scoreboard players operation $ txcw -= $$ txcw

execute if score $ txcw matches ..0 run scoreboard players operation $ txcw = $$ txcw
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui.slot set from storage txcw:core temp.slot.1
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui.speed int 1 run scoreboard players get $ txcw

title @s actionbar ["-",{"score":{"name":"$$","objective":"txcw"}}," << Speed:",{"nbt":"tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui.speed","storage": "txcw:thread"}," >> +",{"score":{"name":"$$","objective":"txcw"}}]
