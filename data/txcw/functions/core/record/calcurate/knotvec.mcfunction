# P[-2]の制御ベクトルを (P[-1] - P[-3]) / 4 にする

# 座標
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-3].pos.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[0] int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-3].pos.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[1] int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[2]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-3].pos.p[2]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[2] int 1 run scoreboard players operation $ txcw /= $4 txcw


# 角度
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-3].rot.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.m[0] int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-3].rot.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.m[1] int 1 run scoreboard players operation $ txcw /= $4 txcw


# 速度
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].vel.p
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-3].vel.p
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].vel.m int 1 run scoreboard players operation $ txcw /= $4 txcw
