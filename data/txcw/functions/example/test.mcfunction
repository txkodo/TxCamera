summon armor_stand ~ ~ ~ {Tags:[txcw.anchor]}

data modify storage txcw:core bezier.3d set value {p1:[-44d,72d,-17d],p2:[-30d,72d,-17d],p3:[-30d,72d,-12d],p4:[-44d,72d,-12d],p:[0d,0d,0d]}

scoreboard players set $t txcw 0
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 100
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 200
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 300
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 400
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 500
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 600
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 700
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 800
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 900
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

scoreboard players set $t txcw 1000
function txcw:core/bezier/3d
data modify entity @e[tag=txcw.anchor,limit=1] Pos set from storage txcw:core bezier.3dp
execute at @e[tag=txcw.anchor,limit=1] run particle flame

kill @e[tag=txcw.anchor]