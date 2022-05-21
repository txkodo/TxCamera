# 次の位置に移動する

# データにアクセス
function txcw:core/thread/please/

# 同じidのエンティティを検出
scoreboard players operation $ txcw.id = @s txcw.id
scoreboard players operation @e[scores={txcw.id=-2147483648..2147483647}] txcw.id -= $ txcw.id
tag @e[scores={txcw.id=0}] add txcw.active
scoreboard players operation @e[scores={txcw.id=-2147483648..2147483647}] txcw.id += $ txcw.id

# ストレージからパラメータを取得
execute store result score $t txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.t

# ストレージから移動距離を取得
execute store result score $span txcw run data get storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.speed

# 速度の補間
data modify storage txcw:core bezier.1d.in set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.vel
function txcw:core/bezier/1d/eval
data modify entity @s Pos set from storage txcw:core bezier.1d.out.p


# 制御点とパラメータを更新
data modify storage txcw:core bezier.3d set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.pos
function txcw:core/camera/move/update

# ストレージにパラメータを保存
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.t int 1 run scoreboard players get $t txcw

# 移動
execute if data storage txcw:core {next:1b} run function txcw:core/camera/move/tp
execute if data storage txcw:core {next:0b} run function txcw:core/camera/move/end

tag @e[tag=txcw.active] remove txcw.active
