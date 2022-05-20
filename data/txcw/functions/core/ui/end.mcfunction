tellraw @s ["カメラの記録を終了しました"]

tellraw @s ["[ 記録を保存する ]\n記録データは storage txcw:api record に格納されています\nこのデータは新しい記録によって上書きされてしまため、\n直ちに別のストレージにコピーしてください"]

tellraw @s ["[ 記録を再生する ]\n保存した記録データは以下の方法で再生できます\n 1. 記録データを storage txcw:api play に格納する\n2. /tag @s add txcw.camera を実行しプレイヤーにタグを付与する\n3. /function txcw:api/play を実行する"]

tag @s remove txcw.ui
function txcw:api/record/end