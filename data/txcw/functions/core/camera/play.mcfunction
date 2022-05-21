summon armor_stand ~ ~ ~ {Tags:[txcw.anchor,txcw.anchor.new],NoGravity:1b,Marker:1b,Invisible:1b,Small:1b}
execute as @e[type=armor_stand,tag=txcw.anchor.new] run function txcw:core/camera/move/first
tag @e[type=armor_stand,tag=txcw.anchor.new] remove txcw.anchor.new
