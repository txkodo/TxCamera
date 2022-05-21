# UI操作メッセージを表示

tellraw @s [{"text":"\nRecording... ","hoverEvent":{"action":"show_text","contents":[{"text":"カメラワーク記録中です"}]}},"[",{"text":"TestPlay","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"記録データをテスト再生"}]},"clickEvent":{"action":"run_command","value":"/function txcw:core/ui/check/testplay"}},{"text":"] ["},{"text":"Exit","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"保存して終了"}]},"clickEvent":{"action":"run_command","value":"/function txcw:core/ui/check/end"}},{"text":"]"}]

clear @s minecraft:crossbow{txcw:1b} 1
item replace entity @s hotbar.4 with minecraft:crossbow{txcw:1b,Charged:1b} 1
execute as @a[tag=txcw.ui] run function txcw:core/ui/auto/tick.as