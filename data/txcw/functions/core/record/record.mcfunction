data modify storage txcw:core record.knots append value {pos:{p:[0,0,0],m:[0,0,0]},rot:{p:[0,0,0],m:[0,0,0]},vel:{p:0,m:0}}

execute positioned ^ ^ ^1000 facing entity @s eyes positioned ^ ^ ^1000 run summon area_effect_cloud ~ ~ ~ {Tags:[txcw.new]}
data modify storage txcw:core record.pos set from entity @e[tag=txcw.new,limit=1] Pos
execute store result storage txcw:core record.knots[-1].pos.p[0] int 1 run data get storage txcw:core record.pos[0] 100
execute store result storage txcw:core record.knots[-1].pos.p[1] int 1 run data get storage txcw:core record.pos[1] 100
execute store result storage txcw:core record.knots[-1].pos.p[2] int 1 run data get storage txcw:core record.pos[2] 100
# execute store result score #0 txcw run data get storage txcw:core record.pos[0] 100
# execute store result storage txcw:core record.knots[-1].pos.p[0] int 1 run scoreboard players get #0 txcw
# execute store result score #1 txcw run data get storage txcw:core record.pos[1] 100
# execute store result storage txcw:core record.knots[-1].pos.p[1] int 1 run scoreboard players get #1 txcw
# execute store result score #2 txcw run data get storage txcw:core record.pos[2] 100
# execute store result storage txcw:core record.knots[-1].pos.p[2] int 1 run scoreboard players get #2 txcw
kill @e[type=area_effect_cloud,tag=txcw.new]

execute positioned ^ ^ ^1000 facing entity @s eyes positioned ^ ^ ^1000 rotated as @s run summon area_effect_cloud ^ ^ ^100 {Tags:[txcw.new]}
data modify storage txcw:core record.pos set from entity @e[tag=txcw.new,limit=1] Pos
execute store result storage txcw:core record.knots[-1].rot.p[0] int 1 run data get storage txcw:core record.pos[0] 100
execute store result storage txcw:core record.knots[-1].rot.p[1] int 1 run data get storage txcw:core record.pos[1] 100
execute store result storage txcw:core record.knots[-1].rot.p[2] int 1 run data get storage txcw:core record.pos[2] 100
# execute store result score $ txcw run data get storage txcw:core record.pos[0] 100
# execute store result storage txcw:core record.knots[-1].rot.p[0] int 1 run scoreboard players operation $ txcw -= #0 txcw
# execute store result score $ txcw run data get storage txcw:core record.pos[1] 100
# execute store result storage txcw:core record.knots[-1].rot.p[1] int 1 run scoreboard players operation $ txcw -= #1 txcw
# execute store result score $ txcw run data get storage txcw:core record.pos[2] 100
# execute store result storage txcw:core record.knots[-1].rot.p[2] int 1 run scoreboard players operation $ txcw -= #2 txcw
kill @e[type=area_effect_cloud,tag=txcw.new]

data modify storage txcw:core record.knots[-1].vel.p set value 20

execute unless data storage txcw:core record.knots[-2] run function txcw:core/record/record.first
execute if data storage txcw:core record.knots[-2] unless data storage txcw:core record.knots[-3] run function txcw:core/record/record.second
execute if data storage txcw:core record.knots[-3] unless data storage txcw:core record.knots[-4] run function txcw:core/record/record.third
execute if data storage txcw:core record.knots[-4] run function txcw:core/record/record.middle
