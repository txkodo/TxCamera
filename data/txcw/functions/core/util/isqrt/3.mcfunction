# 値に応じて100の位設定
execute if score $sqrt.v txcw matches 10000.. run scoreboard players set $sqrt.out txcw -100
execute if score $sqrt.v txcw matches 40000.. run scoreboard players set $sqrt.out txcw -200
execute if score $sqrt.v txcw matches 90000.. run scoreboard players set $sqrt.out txcw -300
execute if score $sqrt.v txcw matches 160000.. run scoreboard players set $sqrt.out txcw -400
execute if score $sqrt.v txcw matches 250000.. run scoreboard players set $sqrt.out txcw -500
execute if score $sqrt.v txcw matches 360000.. run scoreboard players set $sqrt.out txcw -600
execute if score $sqrt.v txcw matches 490000.. run scoreboard players set $sqrt.out txcw -700
execute if score $sqrt.v txcw matches 640000.. run scoreboard players set $sqrt.out txcw -800
execute if score $sqrt.v txcw matches 810000.. run scoreboard players set $sqrt.out txcw -900

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
