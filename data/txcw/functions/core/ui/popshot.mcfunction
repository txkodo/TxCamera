# 現在位置を通過点に追加

tellraw @s [{"text":"\nDeleted last Checkpoint! [","hoverEvent":{"action":"show_text","contents":[{"text":"最後のチェックポイントを削除しました"}]}}," [",{"text":"Exit","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"保存して終了"}]},"clickEvent":{"action":"run_command","value":"/function txcw:core/ui/check/end"}},{"text":"]"}]
function txcw:api/record/poppoint
