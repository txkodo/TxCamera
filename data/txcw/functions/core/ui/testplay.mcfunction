function txcw:core/thread/please/
function txcw:core/record/calcurate/
execute unless data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1] run tellraw @s ["再生するには2つ以上の経由点が必要です"]
execute if data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1] run tellraw @s ["テスト再生を開始します"]
execute if data storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].record.knots[1] run function txcw:core/record/testplay
