function txcw:core/thread/please/
function txcw:core/record/calcurate/

execute if data storage txcw:core record{success:0b} run tellraw @s ["",{"text":"\nError:","color":"red"},{"text":" failed to export camerawork","hoverEvent":{"action":"show_text","contents":[{"text":"カメラワークの出力に失敗しました"}]}}]

execute if data storage txcw:core record{success:1b} run tellraw @s {"text":"\nStart Testplay","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"カメラワークをテスト再生します"}]}}

execute if data storage txcw:core record{success:1b} run function txcw:core/record/testplay
