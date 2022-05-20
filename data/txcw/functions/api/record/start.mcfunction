execute if entity @s[tag=txcw.record] run tellraw @s ["記録中に新しく記録することはできません。\n'/function txcw:api/record/end' を実行し、元の記録を終了させてください"]
execute if entity @s[tag=!txcw.record,scores={txcw.id=-2147483648..2147483647}] run tellraw @s ["再生中に記録することはできません。\n再生後に再実行してください。"]

execute unless entity @s[scores={txcw.id=-2147483648..2147483647}] run function txcw:core/record/start
