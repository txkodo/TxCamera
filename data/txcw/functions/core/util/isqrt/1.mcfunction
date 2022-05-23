# 値に応じて1の位設定
execute if score $sqrt.v txcw matches 1.. run scoreboard players set $sqrt.out txcw -1
execute if score $sqrt.v txcw matches 4.. run scoreboard players set $sqrt.out txcw -2
execute if score $sqrt.v txcw matches 9.. run scoreboard players set $sqrt.out txcw -3
execute if score $sqrt.v txcw matches 16.. run scoreboard players set $sqrt.out txcw -4
execute if score $sqrt.v txcw matches 25.. run scoreboard players set $sqrt.out txcw -5
execute if score $sqrt.v txcw matches 36.. run scoreboard players set $sqrt.out txcw -6
execute if score $sqrt.v txcw matches 49.. run scoreboard players set $sqrt.out txcw -7
execute if score $sqrt.v txcw matches 64.. run scoreboard players set $sqrt.out txcw -8
execute if score $sqrt.v txcw matches 81.. run scoreboard players set $sqrt.out txcw -9
