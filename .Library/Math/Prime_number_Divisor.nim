import atcoder/extra/math/eratosthenes
let e=initEratosthenes(n)

e.prime

e.factor(N)
#Factor
var f:Table[int,int]
for i in 2..N.toFloat.sqrt.toInt:
  while N mod i==0:
    if f.hasKeyOrPut(i,1): f[i]+=1
    N=N div i
if N>1: f[N]=1

e.divisor(N)
#Divisor
var d:seq[int]
for i in 1..N.toFloat.sqrt.toInt:
  if N mod i==0:
    d.add(i)
    if i^2!=N: d.add(N div i)
d.sort