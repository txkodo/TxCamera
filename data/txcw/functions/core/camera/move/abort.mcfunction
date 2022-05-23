# 追従するエンティティがいなくなった時の処理

function txcw:core/thread/please/
data modify storage txcw:api callback.id set from storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].play.id

# テストプレイ時はデータを消さない
execute if entity @s[tag=!txcw.anchor.test] run function txcw:core/thread/release/

kill @s

# テストプレイ時はスコアを消さない
execute if entity @s[tag=!txcw.anchor.test] run scoreboard players reset @e[tag=txcw.active] txcw.id

# テストプレイ時はコールバックしない
execute if entity @s[tag=!txcw.anchor.test] run function #txcw:callback/on_abort

data remove storage txcw:api callback.id
