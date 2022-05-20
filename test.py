
p1 = [-44,72,-17]
p2 = [-30,72,-17]
p3 = [-30,72,-12]
p4 = [-44,72,-12]


def div2(i:int,t:int):
  s = 1000 - t
  print((-6 * s * t + 3 * s ** 2))
  print((6 * s * t - 3 * t ** 2))
  return ((-6 * s * t + 3 * s ** 2) * ((p2[i] - p1[i]) * 100) + (6 * s * t - 3 * t ** 2) * ((p3[i] - p1[i]) * 100) + 3 * ((p4[i] - p1[i]) * 100) * t ** 2) / 1000 / 1000

def mag2(t:int):
  print(div2(0,t))
  return (div2(0,t) ** 2 + div2(1,t) ** 2 + div2(2,t) ** 2 ) ** 0.5

t = 0
# for i in [0,71,153,248,357,476,594,700,793,874]:
#   dt = 300000 / mag2(i)
#   print(dt)
for i in [476]:
  dt = 300000 / mag2(i)
  print(dt)
