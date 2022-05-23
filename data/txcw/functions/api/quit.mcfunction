#> txcw:api/quit
#
# 再生中のカメラの追従をやめる
#
# ほかのプレーヤーの追従はキャンセルされない
#
# 追従するエンティティがいなくなってもカメラワークは再生され続け、#txcw:callback/on_finished が呼ばれることに注意
#
# @ コールバック #txcw:callback/on_quit_each
#
# @api

execute if entity @s[tag=!txcw.camera_] run tellraw @s ["再生中ではありません。"]

execute if entity @s[tag=txcw.camera_] run function txcw:core/camera/quit
