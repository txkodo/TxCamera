# 値に応じて10の位設定
execute if score $sqrt.v txcw matches 100.. run scoreboard players set $sqrt.out txcw -10
execute if score $sqrt.v txcw matches 400.. run scoreboard players set $sqrt.out txcw -20
execute if score $sqrt.v txcw matches 900.. run scoreboard players set $sqrt.out txcw -30
execute if score $sqrt.v txcw matches 1600.. run scoreboard players set $sqrt.out txcw -40
execute if score $sqrt.v txcw matches 2500.. run scoreboard players set $sqrt.out txcw -50
execute if score $sqrt.v txcw matches 3600.. run scoreboard players set $sqrt.out txcw -60
execute if score $sqrt.v txcw matches 4900.. run scoreboard players set $sqrt.out txcw -70
execute if score $sqrt.v txcw matches 6400.. run scoreboard players set $sqrt.out txcw -80
execute if score $sqrt.v txcw matches 8100.. run scoreboard players set $sqrt.out txcw -90

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
