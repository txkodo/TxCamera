#> txcw:core/util/isqrt/
# 
# 平方根を求めます。入力は 0 から int.MAX まで。小数点以下切り捨て。
#
# @ 入力: 実数(int) => score $sqrt.in txcw
# @ 出力: 平方根(int) => score $sqrt.out txcw

### Copyright © 2021 txkodo
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players operation $sqrt.v txcw = $sqrt.in txcw 
scoreboard players set $sqrt.r txcw 0

execute if score $sqrt.in txcw matches 100000000.. run function txcw:core/util/isqrt/5
execute if score $sqrt.in txcw matches 1000000..99999999 run function txcw:core/util/isqrt/4
execute if score $sqrt.in txcw matches 10000..999999 run function txcw:core/util/isqrt/3
execute if score $sqrt.in txcw matches 100..9999 run function txcw:core/util/isqrt/2
execute if score $sqrt.in txcw matches 1..99 run function txcw:core/util/isqrt/1

scoreboard players operation $sqrt.out txcw *= #-1 txcw
