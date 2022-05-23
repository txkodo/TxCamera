# クロスボウクリック時
advancement revoke @s only txcw:core/click
clear @s minecraft:crossbow{txcw:1b,Charged:0b} 1
item replace entity @s weapon.mainhand with minecraft:crossbow{txcw:1b,Charged:1b} 1

function txcw:core/ui/check/shot
