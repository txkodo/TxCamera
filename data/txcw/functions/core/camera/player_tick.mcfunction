data modify storage txcw:core _ set value 0b
execute if entity @s[scores={txcw.id=-2147483648..2147483647}] run function txcw:core/camera/player_tick.main
