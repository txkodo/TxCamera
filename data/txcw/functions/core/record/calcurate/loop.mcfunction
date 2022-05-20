
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots append value {pos:{p:[0,0,0],m:[0,0,0]},rot:{p:[0,0],m:[0,0]},vel:{p:0,m:0}}

# 座標
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[0] int 1 run data get storage txcw:core temp.points[0].pos[0] 100
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[1] int 1 run data get storage txcw:core temp.points[0].pos[1] 100
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].pos.p[2] int 1 run data get storage txcw:core temp.points[0].pos[2] 100

# 角度
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[0] int 1 run data get storage txcw:core temp.points[0].rot[0] 100
execute if data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-2] run function txcw:core/record/calcurate/adjustrot
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].rot.p[1] int 1 run data get storage txcw:core temp.points[0].rot[1] 100

# 速度
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-1].vel.p int 1 run data get storage txcw:core temp.points[0].speed 1

# ひとつ前のノットベクトルの計算
execute if data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[-3] run function txcw:core/record/calcurate/knotvec

# 最後の点まで繰り返す
data remove storage txcw:core temp.points[0]
execute if data storage txcw:core temp.points[0] run function txcw:core/record/calcurate/loop