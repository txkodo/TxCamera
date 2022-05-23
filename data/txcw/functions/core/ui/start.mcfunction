tellraw @s ["",{"text":"\nStarted Recording!!","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"記録を開始しました"}]}}," [",{"text":"Exit","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"保存して終了"}]},"clickEvent":{"action":"run_command","value":"/function txcw:core/ui/check/end"}},{"text":"]"}]

function txcw:api/record/start
tag @s add txcw.ui
function txcw:core/ui/auto/tick

function txcw:core/thread/please/
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui.speed set value 50
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].ui.slot set from entity @s SelectedItemSlot

advancement revoke @s only txcw:core/click
item replace entity @s hotbar.4 with minecraft:crossbow{txcw:1b,Charged:1b} 1