advancement revoke @s only txcw:core/tick

gamemode spectator @s[gamemode=!spectator]

# 同じidのエンティティをspectate
tag @s add txcw.active

scoreboard players operation $ txcw.id = @s txcw.id
execute as @e[type=armor_stand,tag=txcw.anchor] if score $ txcw.id = @s txcw.id run spectate @s @p[tag=txcw.active]

tag @s remove txcw.active