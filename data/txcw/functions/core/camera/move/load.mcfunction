# データをベジエの制御点に変換する
data modify storage txcw:core bezier.3d set value {p1:[0,0,0],p2:[0,0,0],p3:[0,0,0],p4:[0,0,0]}
data modify storage txcw:core bezier.1d set value {p1:0,p2:0,p3:0,p4:0}

# 位置の制御点
data modify storage txcw:core bezier.3d.p1 set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].pos.p

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].pos.m[0]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].pos.p[0]
execute store result storage txcw:core bezier.3d.p2[0] int 1 run scoreboard players operation #0 txcw += #1 txcw

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].pos.m[1]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].pos.p[1]
execute store result storage txcw:core bezier.3d.p2[1] int 1 run scoreboard players operation #0 txcw += #1 txcw

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].pos.m[2]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].pos.p[2]
execute store result storage txcw:core bezier.3d.p2[2] int 1 run scoreboard players operation #0 txcw += #1 txcw

data modify storage txcw:core bezier.3d.p4 set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].pos.p

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].pos.m[0]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].pos.p[0]
execute store result storage txcw:core bezier.3d.p3[0] int 1 run scoreboard players operation #0 txcw -= #1 txcw

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].pos.m[1]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].pos.p[1]
execute store result storage txcw:core bezier.3d.p3[1] int 1 run scoreboard players operation #0 txcw -= #1 txcw

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].pos.m[2]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].pos.p[2]
execute store result storage txcw:core bezier.3d.p3[2] int 1 run scoreboard players operation #0 txcw -= #1 txcw

data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].pos set from storage txcw:core bezier.3d


# 視線の制御点
data modify storage txcw:core bezier.3d.p1 set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].rot.p

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].rot.m[0]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].rot.p[0]
execute store result storage txcw:core bezier.3d.p2[0] int 1 run scoreboard players operation #0 txcw += #1 txcw

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].rot.m[1]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].rot.p[1]
execute store result storage txcw:core bezier.3d.p2[1] int 1 run scoreboard players operation #0 txcw += #1 txcw

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].rot.m[2]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].rot.p[2]
execute store result storage txcw:core bezier.3d.p2[2] int 1 run scoreboard players operation #0 txcw += #1 txcw

data modify storage txcw:core bezier.3d.p4 set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].rot.p

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].rot.m[0]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].rot.p[0]
execute store result storage txcw:core bezier.3d.p3[0] int 1 run scoreboard players operation #0 txcw -= #1 txcw

data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].rot set from storage txcw:core bezier.3d


# 速度の制御点
data modify storage txcw:core bezier.1d.p1 set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].vel.p

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].vel.m[0]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[0].vel.p[0]
execute store result storage txcw:core bezier.1d.p2[0] int 1 run scoreboard players operation #0 txcw += #1 txcw

data modify storage txcw:core bezier.1d.p4 set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].vel.p

execute store result score #1 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].vel.m[0]
execute store result score #0 txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].knots[1].vel.p[0]
execute store result storage txcw:core bezier.1d.p3[0] int 1 run scoreboard players operation #0 txcw -= #1 txcw

data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].vel set from storage txcw:core bezier.1d
