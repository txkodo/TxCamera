data modify storage txcw:core _ set value 0b
execute if entity @s[tag=txcw.camera_] run function txcw:core/camera/player_tick.main
