import atcoder/extra/math/eratosthenes
var e=initEratosthenes(n)

e.factor(N)
#Factor
f:=[(N,1)].toTable; n:=N
for i in 2..N.float.sqrt.int:
  while n%i==0:
    if f.hasKeyOrPut(i,1): f[i]+=1; n//=i

e.divisor(N)
#Divisor
d:=Seq[0:int]
for i in 1..N.float.sqrt.int:
  if N%i==0:
    d.add(i)
    if i^2!=N: d.add(N//i)
d.sort