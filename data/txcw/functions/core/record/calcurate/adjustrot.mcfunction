# yawの差が180°未満になるように調整

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.p[0]

scoreboard players operation $ txcw -= $$ txcw
scoreboard players add $ txcw 18000
scoreboard players operation $ txcw %= #36000 txcw
scoreboard players remove $ txcw 18000
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[0] int 1 run scoreboard players operation $$ txcw += $ txcw
