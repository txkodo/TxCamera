# P[0],P[1]のノットベクトルを (P[1] - P[0]) / 3 にする

# 座標
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.m[0] int 1 run scoreboard players operation $ txcw /= $3 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.m[1] int 1 run scoreboard players operation $ txcw /= $3 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.p[2]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.p[2]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.m[2] int 1 run scoreboard players operation $ txcw /= $3 txcw

data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].m set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].m

# 角度
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].rot.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.m[0] int 1 run scoreboard players operation $ txcw /= $3 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].rot.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.m[1] int 1 run scoreboard players operation $ txcw /= $3 txcw

data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].rot.m set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.m
