# P[-1]のノットベクトルを P[-1] - P[-2] - M[-2] にする

# 座標
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[0]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.m[0] int 1 run scoreboard players operation $ txcw -= $$ txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[1]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.m[1] int 1 run scoreboard players operation $ txcw -= $$ txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[2]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.p[2]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[2]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.m[2] int 1 run scoreboard players operation $ txcw -= $$ txcw


# 角度
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.m[0]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.m[0] int 1 run scoreboard players operation $ txcw -= $$ txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.m[1]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.m[1] int 1 run scoreboard players operation $ txcw -= $$ txcw


# 速度
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].vel.p
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].vel.p
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].vel.m
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].vel.m int 1 run scoreboard players operation $ txcw -= $$ txcw


# P[0]のノットベクトルを P[1] - P[0] - M[1] とする

# 座標
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.m[0]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.m[0] int 1 run scoreboard players operation $ txcw -= $$ txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.m[1]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.m[1] int 1 run scoreboard players operation $ txcw -= $$ txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.p[2]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.p[2]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].pos.m[2]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].pos.m[2] int 1 run scoreboard players operation $ txcw -= $$ txcw


# 角度
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].rot.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].rot.m[0]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.m[0] int 1 run scoreboard players operation $ txcw -= $$ txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].rot.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].rot.m[1]
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].rot.m[1] int 1 run scoreboard players operation $ txcw -= $$ txcw


# 速度
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].vel.p
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].vel.p
scoreboard players operation $ txcw -= $$ txcw
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1].vel.m
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[0].vel.m int 1 run scoreboard players operation $ txcw -= $$ txcw
