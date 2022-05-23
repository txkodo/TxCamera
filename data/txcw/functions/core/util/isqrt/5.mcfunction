# 値に応じて10000の位設定
execute if score $sqrt.v txcw matches 100000000.. run scoreboard players set $sqrt.out txcw -10000
execute if score $sqrt.v txcw matches 400000000.. run scoreboard players set $sqrt.out txcw -20000
execute if score $sqrt.v txcw matches 900000000.. run scoreboard players set $sqrt.out txcw -30000
execute if score $sqrt.v txcw matches 1600000000.. run scoreboard players set $sqrt.out txcw -40000

# 1000の位を計算
scoreboard players operation $_ txcw = $sqrt.out txcw
scoreboard players operation $_ txcw *= $sqrt.out txcw
scoreboard players operation $_ txcw -= $sqrt.v txcw
execute store result storage txcw:core util.isqrt._ int 0.0005 run scoreboard players operation $_ txcw /= $sqrt.out txcw
execute store result score $_ txcw run data get storage txcw:core util.isqrt._ 1000
execute store result score $sqrt.out2 txcw run scoreboard players operation $sqrt.out txcw -= _ txcw
# 予定より大きければ1000引く
scoreboard players operation $sqrt.out2 txcw *= $sqrt.out txcw
execute if score $sqrt.out2 txcw > $sqrt.v txcw run scoreboard players add $sqrt.out txcw 1000

# 100の位を計算
scoreboard players operation $_ txcw = $sqrt.out txcw
scoreboard players operation $_ txcw *= $sqrt.out txcw
scoreboard players operation $_ txcw -= $sqrt.v txcw
execute store result storage txcw:core util.isqrt._ int 0.005 run scoreboard players operation $_ txcw /= $sqrt.out txcw
execute store result score $_ txcw run data get storage txcw:core util.isqrt._ 100
execute store result score $sqrt.out2 txcw run scoreboard players operation $sqrt.out txcw -= _ txcw
# 予定より大きければ100引く
scoreboard players operation $sqrt.out2 txcw *= $sqrt.out txcw
execute if score $sqrt.out2 txcw > $sqrt.v txcw run scoreboard players add $sqrt.out txcw 100

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
