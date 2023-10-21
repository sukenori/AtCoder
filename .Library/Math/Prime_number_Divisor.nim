import atcoder/extra/math/eratosthenes
var e=initEratosthenes(N)

e.factor(n)

e.divisor(n)
#Divisor
var d=newSeq[int]()
for i in 1..N.float.sqrt.int:
  if N%i==0:
    d.add(i)
    if i^2!=N: d.add(N//i)
d.sort