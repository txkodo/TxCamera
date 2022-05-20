scoreboard players set $ txcw.id 4194304
# [0,2**31)
scoreboard players operation $ txcw.id *= @s txcw.id
scoreboard players operation $last txcw.id = @s txcw.id

# [-2**31,2**31)
scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree append value []

scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[-2][2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree[-2] append value []

scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[-2][-2][2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree[-2][-2] append value []

scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[-2][-2][-2][2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree[-2][-2][-2] append value []

scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[-2][-2][-2][-2][2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree[-2][-2][-2][-2] append value []

scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[-2][-2][-2][-2][-2][2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree[-2][-2][-2][-2][-2] append value []

scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[-2][-2][-2][-2][-2][-2][2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ txcw.id += $ txcw.id
data remove storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $ txcw.id matches 0.. run data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2] append value {}
