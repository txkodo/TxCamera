# 点群からノットベクトルを計算しrecordを更新
function txcw:core/thread/please/

data modify storage txcw:core temp.points set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].raw.points
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots set value []

# 各ノットを計算して順次追加
function txcw:core/record/calcurate/loop

# 端のノットベクトルを算出
execute if data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[2] run function txcw:core/record/calcurate/knotvec.end
execute unless data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[2] run function txcw:core/record/calcurate/knotvec.line

data remove storage txcw:core temp.points