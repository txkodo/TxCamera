# 最初の位置に移動する

# データにアクセス
function txcw:core/thread/please/
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play set from storage txcw:api play

# ストレージから座標制御点を取得
function txcw:core/camera/move/load

# 同じidのエンティティを検出
scoreboard players operation @e[tag=txcw.camera] txcw.id = @s txcw.id
tag @e[tag=txcw.camera] add txcw.active

# パラメータを0に
scoreboard players set $t txcw 0

# 移動距離を0に
scoreboard players set $span txcw 0

# 制御点とパラメータを更新
data modify storage txcw:core bezier.3d set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.pos
function txcw:core/camera/move/update

# ストレージにパラメータを保存
execute store result storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.t int 1 run scoreboard players get $t txcw

# 移動
execute if data storage txcw:core {next:1b} run function txcw:core/camera/move/tp
execute if data storage txcw:core {next:0b} run function txcw:core/camera/move/end

# tick進捗の解除
advancement revoke @a[tag=txcw.camera] only txcw:core/tick


# タグの付与
tag @a[tag=txcw.active,gamemode=survival] add txcw.survival
tag @a[tag=txcw.active,gamemode=creative] add txcw.creative
tag @a[tag=txcw.active,gamemode=adventure] add txcw.adventure
tag @a[tag=txcw.active,gamemode=spectator] add txcw.spectator

tag @e[tag=txcw.camera] add txcw.camera_

# タグの削除
tag @e[tag=txcw.active] remove txcw.active
tag @e[tag=txcw.camera] remove txcw.camera
