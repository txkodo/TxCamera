### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:sqrt/
# 平方根を求めます。入力は 0.00000001 から 100000000 まで。結果は有効数字4桁です。
## 入力: 実数(double) => storage math: in
## 出力: 平方根(double) => storage math: out


# 設定されない可能性のある値を初期化
scoreboard players set R txcw -1
data modify storage math: out set value 0d

# 入力に応じてスケール変更
execute store result score V txcw run data get storage math: in 1
execute if score V txcw matches 100000000.. store result score V txcw run data get storage math: in 0.01
execute if score V txcw matches ..999999 store result score V txcw run data get storage math: in 100
execute if score V txcw matches ..999999 store result score V txcw run data get storage math: in 10000
execute if score V txcw matches ..999999 store result score V txcw run data get storage math: in 1000000
execute if score V txcw matches ..999999 store result score V txcw run data get storage math: in 100000000

# 値に応じて1000の位設定
execute if score V txcw matches 1000000.. run scoreboard players set R txcw -1000
execute if score V txcw matches 4000000.. run scoreboard players set R txcw -2000
execute if score V txcw matches 9000000.. run scoreboard players set R txcw -3000
execute if score V txcw matches 16000000.. run scoreboard players set R txcw -4000
execute if score V txcw matches 25000000.. run scoreboard players set R txcw -5000
execute if score V txcw matches 36000000.. run scoreboard players set R txcw -6000
execute if score V txcw matches 49000000.. run scoreboard players set R txcw -7000
execute if score V txcw matches 64000000.. run scoreboard players set R txcw -8000
execute if score V txcw matches 81000000.. run scoreboard players set R txcw -9000

# 100の位を計算
scoreboard players operation _ txcw = R txcw
scoreboard players operation _ txcw *= R txcw
scoreboard players operation _ txcw -= V txcw
execute store result storage math:_ txcw int 0.005 run scoreboard players operation _ txcw /= R txcw
execute store result score _ txcw run data get storage math:_ txcw 100
execute store result score R2 txcw run scoreboard players operation R txcw -= _ txcw
# 予定より大きければ100引く
scoreboard players operation R2 txcw *= R txcw
execute if score R2 txcw > V txcw run scoreboard players add R txcw 100

# 10の位を計算
scoreboard players operation _ txcw = R txcw
scoreboard players operation _ txcw *= R txcw
scoreboard players operation _ txcw -= V txcw
execute store result storage math:_ txcw int 0.05 run scoreboard players operation _ txcw /= R txcw
execute store result score _ txcw run data get storage math:_ txcw 10
execute store result score R2 txcw run scoreboard players operation R txcw -= _ txcw
# 予定より大きければ10引く
scoreboard players operation R2 txcw *= R txcw
execute if score R2 txcw > V txcw run scoreboard players add R txcw 10

# 1の位を計算
scoreboard players operation _ txcw = R txcw
scoreboard players operation _ txcw *= R txcw
scoreboard players operation _ txcw -= V txcw
execute store result storage math:_ txcw int 0.5 run scoreboard players operation _ txcw /= R txcw
execute store result score _ txcw run data get storage math:_ txcw 1
execute store result score R2 txcw run scoreboard players operation R txcw -= _ txcw
# 予定より大きければ1引く
scoreboard players operation R2 txcw *= R txcw
execute if score R2 txcw > V txcw run scoreboard players add R txcw 1

# 入力に応じてスケール変更
execute store result score V txcw run data get storage math: in 1
execute if score V txcw matches 100000000.. store result storage math: out double -10 run scoreboard players get R txcw
execute if score V txcw matches 1000000..99999999 store result storage math: out double -1 run scoreboard players get R txcw
execute if score V txcw matches 10000..999999 store result storage math: out double -0.1 run scoreboard players get R txcw
execute if score V txcw matches 100..9999 store result storage math: out double -0.01 run scoreboard players get R txcw
execute if score V txcw matches 1..99 store result storage math: out double -0.001 run scoreboard players get R txcw
