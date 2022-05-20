# 記録中のデータをテスト再生する
tag @s add txcw.camera
summon armor_stand ~ ~ ~ {Tags:[txcw.anchor,txcw.anchor.test,txcw.anchor.new],NoGravity:1b,Marker:1b,Invisible:0b,Small:1b}
scoreboard players operation @e[type=armor_stand,tag=txcw.anchor.new] txcw.id = @s txcw.id
execute as @e[type=armor_stand,tag=txcw.anchor.new] run function txcw:core/camera/move/first
tag @e[type=armor_stand,tag=txcw.anchor.new] remove txcw.anchor.new
