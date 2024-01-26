import atcoder/extra/math/eratosthenes
e:=initEratosthenes(n)

e.prime

e.factor(N)
#Factor
var f:Table[int,int]
for i in 2..N.float.sqrt.int:
  while N%i==0:
    if f.hasKeyOrPut(i,1): f[i]+=1
    N//=i
if N>1: f[N]=1

e.divisor(N)
#Divisor
d:=Seq[0:int]
for i in 1..N.float.sqrt.int:
  if N%i==0:
    d.add(i)
    if i^2!=N: d.add(N//i)
d.sort