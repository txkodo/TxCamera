execute unless score @s txcw.id matches -2147483648..2147483647 run function txcw:core/thread/please/new
execute unless score $last txcw.id = @s txcw.id run function txcw:core/thread/please/main
