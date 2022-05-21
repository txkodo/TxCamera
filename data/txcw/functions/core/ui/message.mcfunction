# UI操作メッセージを表示

tellraw @s [{"text":"\nRecording... ","hoverEvent":{"action":"show_text","contents":[{"text":"カメラワーク記録中です"}]}},"[",{"text":"TestPlay","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"記録データをテスト再生"}]},"clickEvent":{"action":"run_command","value":"/function txcw:core/ui/check/testplay"}},{"text":"] ["},{"text":"Exit","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"保存して終了"}]},"clickEvent":{"action":"run_command","value":"/function txcw:core/ui/check/end"}},{"text":"]"}]
data modify storage txcw:api point.pos set from entity @s Pos
data modify storage txcw:api point.rot set from entity @s Rotation
data modify storage txcw:api point.speed set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui.speed
function txcw:api/record/addpoint

clear @s minecraft:crossbow{txcw:1b} 1
item replace entity @s hotbar.4 with minecraft:crossbow{txcw:1b,Charged:1b} 1
