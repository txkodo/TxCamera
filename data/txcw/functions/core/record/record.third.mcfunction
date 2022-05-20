# 通過点が3つの場合

# P-2の制御ベクトルをP-3 -> P-1 の半分にする
# P-1の制御ベクトルは 2 * (P-2 -> P-1) - (P-3 -> P-1) / 2 とする
# P-3の制御ベクトルは 2 * (P-3 -> P-2) - (P-3 -> P-1) / 2 とする
execute store result score $ txcw run data get storage txcw:core record.knots[-1].pos.p[0]
execute store result score $$ txcw run data get storage txcw:core record.knots[-3].pos.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:core record.knots[-2].pos.m[0] int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-1].pos.p[0]
execute store result score #2 txcw run data get storage txcw:core record.knots[-2].pos.p[0]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-1].pos.m[0] int 1 run scoreboard players operation #1 txcw -= $ txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-2].pos.p[0]
execute store result score #2 txcw run data get storage txcw:core record.knots[-3].pos.p[0]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-3].pos.m[0] int 1 run scoreboard players operation #1 txcw -= $ txcw


execute store result score $ txcw run data get storage txcw:core record.knots[-1].pos.p[1]
execute store result score $$ txcw run data get storage txcw:core record.knots[-3].pos.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:core record.knots[-2].pos.m[1] int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-1].pos.p[1]
execute store result score #2 txcw run data get storage txcw:core record.knots[-2].pos.p[1]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-1].pos.m[1] int 1 run scoreboard players operation #1 txcw -= $ txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-2].pos.p[1]
execute store result score #2 txcw run data get storage txcw:core record.knots[-3].pos.p[1]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-3].pos.m[1] int 1 run scoreboard players operation #1 txcw -= $ txcw


execute store result score $ txcw run data get storage txcw:core record.knots[-1].pos.p[2]
execute store result score $$ txcw run data get storage txcw:core record.knots[-3].pos.p[2]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:core record.knots[-2].pos.m[2] int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-1].pos.p[2]
execute store result score #2 txcw run data get storage txcw:core record.knots[-2].pos.p[2]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-1].pos.m[2] int 1 run scoreboard players operation #1 txcw -= $ txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-2].pos.p[2]
execute store result score #2 txcw run data get storage txcw:core record.knots[-3].pos.p[2]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-3].pos.m[2] int 1 run scoreboard players operation #1 txcw -= $ txcw

# P-2の制御ベクトルをP-3 -> P-1 の半分にする
# P-1の制御ベクトルは 2 * (P-2 -> P-1) - (P-3 -> P-1) / 2 とする
# P-3の制御ベクトルは 2 * (P-3 -> P-2) - (P-3 -> P-1) / 2 とする
execute store result score $ txcw run data get storage txcw:core record.knots[-1].rot.p[0]
execute store result score $$ txcw run data get storage txcw:core record.knots[-3].rot.p[0]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:core record.knots[-2].rot.m[0] int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-1].rot.p[0]
execute store result score #2 txcw run data get storage txcw:core record.knots[-2].rot.p[0]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-1].rot.m[0] int 1 run scoreboard players operation #1 txcw -= $ txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-2].rot.p[0]
execute store result score #2 txcw run data get storage txcw:core record.knots[-3].rot.p[0]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-3].rot.m[0] int 1 run scoreboard players operation #1 txcw -= $ txcw


execute store result score $ txcw run data get storage txcw:core record.knots[-1].rot.p[1]
execute store result score $$ txcw run data get storage txcw:core record.knots[-3].rot.p[1]
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:core record.knots[-2].rot.m[1] int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-1].rot.p[1]
execute store result score #2 txcw run data get storage txcw:core record.knots[-2].rot.p[1]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-1].rot.m[1] int 1 run scoreboard players operation #1 txcw -= $ txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-2].rot.p[1]
execute store result score #2 txcw run data get storage txcw:core record.knots[-3].rot.p[1]
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-3].rot.m[1] int 1 run scoreboard players operation #1 txcw -= $ txcw


# P-2の制御ベクトルをP-3 -> P-1 の半分にする
# P-1の制御ベクトルは 2 * (P-2 -> P-1) - (P-3 -> P-1) / 2 とする
# P-3の制御ベクトルは 2 * (P-3 -> P-2) - (P-3 -> P-1) / 2 とする
execute store result score $ txcw run data get storage txcw:core record.knots[-1].vel.p
execute store result score $$ txcw run data get storage txcw:core record.knots[-3].vel.p
scoreboard players operation $ txcw -= $$ txcw
execute store result storage txcw:core record.knots[-2].vel.m int 1 run scoreboard players operation $ txcw /= $4 txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-1].vel.p
execute store result score #2 txcw run data get storage txcw:core record.knots[-2].vel.p
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-1].vel.m int 1 run scoreboard players operation #1 txcw -= $ txcw

execute store result score #1 txcw run data get storage txcw:core record.knots[-2].vel.p
execute store result score #2 txcw run data get storage txcw:core record.knots[-3].vel.p
scoreboard players operation #1 txcw -= #2 txcw
execute store result storage txcw:core record.knots[-3].vel.m int 1 run scoreboard players operation #1 txcw -= $ txcw
