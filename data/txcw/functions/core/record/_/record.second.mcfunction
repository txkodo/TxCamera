# 通過点が2つの場合

# ひとつ前の制御ベクトルを線分の方向にする
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[0] int 1 run scoreboard players operation $ txcw /= #3 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[1] int 1 run scoreboard players operation $ txcw /= #3 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[2]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.p[2]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].pos.m[2] int 1 run scoreboard players operation $ txcw /= #3 txcw

# 先頭の制御ベクトルひとつ前のものと同じ
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].m set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].m

# ひとつ前の制御ベクトルを線分の方向にする
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[0]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.m[0] int 1 run scoreboard players operation $ txcw /= #3 txcw

execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[1]
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.m[1] int 1 run scoreboard players operation $ txcw /= #3 txcw

# 先頭の制御ベクトルひとつ前のものと同じ
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.m set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].rot.m


# ひとつ前の制御ベクトルを線分の方向にする
execute store result score $ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].vel.p
execute store result score $$ txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].vel.p
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].vel.m int 1 run scoreboard players operation $ txcw /= #3 txcw

# 先頭の制御ベクトルひとつ前のものと同じ
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].vel.m set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2].vel.m
