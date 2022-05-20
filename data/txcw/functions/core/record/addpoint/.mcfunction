function txcw:core/thread/please/

data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].raw.points append value {pos:[0d,0d,0d],rot:[0d,0d],speed:0}
data modify storage txcw:thread tree[-2][-2][-2][-2][-2][-2][-2][-2][-2].raw.points[-1] merge from storage txcw:api point
