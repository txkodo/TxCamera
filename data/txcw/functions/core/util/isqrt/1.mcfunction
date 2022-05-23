# 値に応じて100の位設定
execute if score $sqrt.v txcw matches 1.. run scoreboard players set $sqrt.out txcw -1
execute if score $sqrt.v txcw matches 4.. run scoreboard players set $sqrt.out txcw -2
execute if score $sqrt.v txcw matches 9.. run scoreboard players set $sqrt.out txcw -3
execute if score $sqrt.v txcw matches 16.. run scoreboard players set $sqrt.out txcw -4
execute if score $sqrt.v txcw matches 25.. run scoreboard players set $sqrt.out txcw -5
execute if score $sqrt.v txcw matches 36.. run scoreboard players set $sqrt.out txcw -6
execute if score $sqrt.v txcw matches 49.. run scoreboard players set $sqrt.out txcw -7
execute if score $sqrt.v txcw matches 64.. run scoreboard players set $sqrt.out txcw -8
execute if score $sqrt.v txcw matches 81.. run scoreboard players set $sqrt.out txcw -9

# 10の位を計算
scoreboard players operation $_ txcw = $sqrt.out txcw
scoreboard players operation $_ txcw *= $sqrt.out txcw
scoreboard players operation $_ txcw -= $sqrt.v txcw
execute store result storage txcw:core util.isqrt._ int 0.05 run scoreboard players operation $_ txcw /= $sqrt.out txcw
execute store result score $_ txcw run data get storage txcw:core util.isqrt._ 10
execute store result score $sqrt.out2 txcw run scoreboard players operation $sqrt.out txcw -= _ txcw
# 予定より大きければ10引く
scoreboard players operation $sqrt.out2 txcw *= $sqrt.out txcw
execute if score $sqrt.out2 txcw > $sqrt.v txcw run scoreboard players add $sqrt.out txcw 10

# 1の位を計算
scoreboard players operation $_ txcw = $sqrt.out txcw
scoreboard players operation $_ txcw *= $sqrt.out txcw
scoreboard players operation $_ txcw -= $sqrt.v txcw
execute store result storage txcw:core util.isqrt._ int 0.5 run scoreboard players operation $_ txcw /= $sqrt.out txcw
execute store result score $_ txcw run data get storage txcw:core util.isqrt._ 1
execute store result score $sqrt.out2 txcw run scoreboard players operation $sqrt.out txcw -= _ txcw
# 予定より大きければ1引く
scoreboard players operation $sqrt.out2 txcw *= $sqrt.out txcw
execute if score $sqrt.out2 txcw > $sqrt.v txcw run scoreboard players add $sqrt.out txcw 1
