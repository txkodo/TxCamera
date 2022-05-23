
tag @s remove txcw.camera_

gamemode survival @s[tag=txcw.survival]
gamemode creative @s[tag=txcw.creative]
gamemode adventure @s[tag=txcw.adventure]
gamemode spectator @s[tag=txcw.spectator]

tag @s remove txcw.survival
tag @s remove txcw.creative
tag @s remove txcw.adventure
tag @s remove txcw.spectator

# テストプレイ時はコールバックしない
execute if entity @s[tag=!txcw.ui] run function #txcw:callback/on_quit_each
