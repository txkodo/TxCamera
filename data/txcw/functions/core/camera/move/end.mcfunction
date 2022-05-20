function txcw:core/thread/release/

kill @s

gamemode survival @a[tag=txcw.active,tag=txcw.survival]
gamemode creative @a[tag=txcw.active,tag=txcw.creative]
gamemode adventure @a[tag=txcw.active,tag=txcw.adventure]
gamemode spectator @a[tag=txcw.active,tag=txcw.spectator]

tag @a[tag=txcw.active] remove txcw.survival
tag @a[tag=txcw.active] remove txcw.creative
tag @a[tag=txcw.active] remove txcw.adventure
tag @a[tag=txcw.active] remove txcw.spectator

scoreboard players reset @e[tag=txcw.active] txcw.id