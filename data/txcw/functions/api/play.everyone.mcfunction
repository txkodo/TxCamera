#> txcw:api/play.everyone
#
# カメラワークを再生する
#
# ワールドの全プレイヤーがカメラに追従する
#
# @input storage txcw:api play : カメラワークデータ (記録終了時に storage txcw:api record に格納されるもの)
# @api

tag @a add txcw.camera
function txcw:core/camera/play