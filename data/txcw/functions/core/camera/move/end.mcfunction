# テストプレイ時はデータを消さない
execute if entity @s[tag=!txcw.anchor.test] run function txcw:core/thread/release/

kill @s

gamemode survival @a[tag=txcw.active,tag=txcw.survival]
gamemode creative @a[tag=txcw.active,tag=txcw.creative]
gamemode adventure @a[tag=txcw.active,tag=txcw.adventure]
gamemode spectator @a[tag=txcw.active,tag=txcw.spectator]

tag @a[tag=txcw.active] remove txcw.survival
tag @a[tag=txcw.active] remove txcw.creative
tag @a[tag=txcw.active] remove txcw.adventure
tag @a[tag=txcw.active] remove txcw.spectator

# テストプレイ時はスコアを消さない
execute if entity @s[tag=!txcw.anchor.test] run scoreboard players reset @e[tag=txcw.active] txcw.id

# 再生中タグの削除
tag @e[tag=txcw.active] remove txcw.camera_