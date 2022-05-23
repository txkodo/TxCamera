from random import randint

def misqrt(n:int):
  c = (n.bit_length() - 1) // 2
  ks:list[int] = []
  ns:list[int] = []
  while (c != 0):
  # for _ in range(5):
    k = (c - 1) // 2
    k = 2 ** k
    print(k)
    ns.append(n)
    ks.append(k)
    n //= (k * k * 4)
    c //= 2
  
  print(ns,ks)
  a = 1

  ks.reverse()
  ns.reverse()

  for k,n in zip(ks,ns):
    a = (a * k) + (n // (k * 4)) // a
    print(a)
  return a - 1 if n < a * a else a


def f(i:int):
    print(i,misqrt(i),int(i**0.5))

# if __name__ == "__main__":
#   # [*tqdm(Pool(12).imap(f,range(2**32)))]
#   for i in range(32):
#     # for _ in range(1000):
#       j = randint(2**i,2**i*2-1)
#       f(j)
#       # print(j)

print(misqrt(2739104712241415643))