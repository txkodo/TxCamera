# 現在位置を通過点に追加

tellraw @s "通過点を追加しました"
data modify storage txcw:api point.pos set from entity @s Pos
data modify storage txcw:api point.rot set from entity @s Rotation
data modify storage txcw:api point.speed set value 50
function txcw:api/record/addpoint
