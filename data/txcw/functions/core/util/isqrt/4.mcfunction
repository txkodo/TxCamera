# 値に応じて1000の位設定
execute if score $sqrt.v txcw matches 1000000.. run scoreboard players set $sqrt.out txcw -1000
execute if score $sqrt.v txcw matches 4000000.. run scoreboard players set $sqrt.out txcw -2000
execute if score $sqrt.v txcw matches 9000000.. run scoreboard players set $sqrt.out txcw -3000
execute if score $sqrt.v txcw matches 16000000.. run scoreboard players set $sqrt.out txcw -4000
execute if score $sqrt.v txcw matches 25000000.. run scoreboard players set $sqrt.out txcw -5000
execute if score $sqrt.v txcw matches 36000000.. run scoreboard players set $sqrt.out txcw -6000
execute if score $sqrt.v txcw matches 49000000.. run scoreboard players set $sqrt.out txcw -7000
execute if score $sqrt.v txcw matches 64000000.. run scoreboard players set $sqrt.out txcw -8000
execute if score $sqrt.v txcw matches 81000000.. run scoreboard players set $sqrt.out txcw -9000

# 100の位を計算
scoreboard players operation $_ txcw = $sqrt.out txcw
scoreboard players operation $_ txcw *= $sqrt.out txcw
scoreboard players operation $_ txcw -= $sqrt.v txcw
execute store result storage txcw:core util.isqrt._ int 0.005 run scoreboard players operation $_ txcw /= $sqrt.out txcw
execute store result score $_ txcw run data get storage txcw:core util.isqrt._ 100
execute store result score $sqrt.r2 txcw run scoreboard players operation $sqrt.out txcw -= $_ txcw
# 予定より大きければ100引く
scoreboard players operation $sqrt.r2 txcw *= $sqrt.out txcw
execute if score $sqrt.r2 txcw > $sqrt.v txcw run scoreboard players add $sqrt.out txcw 100

# 10の位を計算
scoreboard players operation $_ txcw = $sqrt.out txcw
scoreboard players operation $_ txcw *= $sqrt.out txcw
scoreboard players operation $_ txcw -= $sqrt.v txcw
execute store result storage txcw:core util.isqrt._ int 0.05 run scoreboard players operation $_ txcw /= $sqrt.out txcw
execute store result score $_ txcw run data get storage txcw:core util.isqrt._ 10
execute store result score $sqrt.r2 txcw run scoreboard players operation $sqrt.out txcw -= $_ txcw
# 予定より大きければ10引く
scoreboard players operation $sqrt.r2 txcw *= $sqrt.out txcw
execute if score $sqrt.r2 txcw > $sqrt.v txcw run scoreboard players add $sqrt.out txcw 10

# 1の位を計算
scoreboard players operation $_ txcw = $sqrt.out txcw
scoreboard players operation $_ txcw *= $sqrt.out txcw
scoreboard players operation $_ txcw -= $sqrt.v txcw
execute store result storage txcw:core util.isqrt._ int 0.5 run scoreboard players operation $_ txcw /= $sqrt.out txcw
execute store result score $_ txcw run data get storage txcw:core util.isqrt._ 1
execute store result score $sqrt.r2 txcw run scoreboard players operation $sqrt.out txcw -= $_ txcw
# 予定より大きければ1引く
scoreboard players operation $sqrt.r2 txcw *= $sqrt.out txcw
execute if score $sqrt.r2 txcw > $sqrt.v txcw run scoreboard players add $sqrt.out txcw 1
