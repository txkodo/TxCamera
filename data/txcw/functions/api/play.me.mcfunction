#> txcw:api/play.me
#
# カメラワークを再生する
#
# 実行者のみがカメラに追従する
#
# @input storage txcw:api play : カメラワークデータ (記録終了時に storage txcw:api record に格納されるもの)
# @api

tag @s add txcw.camera
function txcw:core/camera/play