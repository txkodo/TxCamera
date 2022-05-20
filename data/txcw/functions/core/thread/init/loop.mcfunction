data modify storage txcw:thread id append from storage txcw:thread id[-1]
execute store result storage txcw:thread _ int 1 store result storage txcw:thread id[-1] int 1 run data get storage txcw:thread id[-1] 0.9999999
execute unless data storage txcw:thread {_:0} run function txcw:core/thread/init/loop
