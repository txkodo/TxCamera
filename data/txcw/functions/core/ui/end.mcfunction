tellraw @s {"text":"\nExit Recording","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"記録を終了しました"}]}}

tag @s remove txcw.ui
function txcw:api/record/end

execute if data storage txcw:core record{success:1b} run tellraw @s ["",{"text":" successfully exported camerawork","hoverEvent":{"action":"show_text","contents":[{"text":"カメラワークは正常に出力されました"}]}}," [",{"text":"Save","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"カメラワークを保存"}]},"clickEvent":{"action":"suggest_command","value":"/data modify storage <namespace> <path> set from storage txcw:api record"}},{"text":"]\n"}]
execute if data storage txcw:core record{success:0b} run tellraw @s ["",{"text":"\nError:","color":"red"},{"text":" failed to export camerawork","hoverEvent":{"action":"show_text","contents":[{"text":"カメラワークの出力に失敗しました"}]}}]

clear @s minecraft:crossbow{txcw:1b} 1

title @s actionbar ""