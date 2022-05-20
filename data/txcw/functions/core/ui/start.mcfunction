tellraw @s ["カメラの記録を開始します"]

tellraw @s ["[ 通過点を追加 ]\n/function txcw:api/record/shot"]
tellraw @s ["[ 記録をテスト ]\n/function txcw:api/record/testplay"]

tellraw @s ["[ 記録を終了し保存 ]\n/function txcw:api/record/end"]

function txcw:api/record/start
function txcw:core/record/ui/auto/tick
tag @s add txcw.ui
