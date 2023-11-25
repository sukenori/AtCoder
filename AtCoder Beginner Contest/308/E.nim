include atcoder/extra/header/chaemon_header
N:=nextInt()
A:=Seq[N:nextInt()]
S:=nextString()
var M,X=Seq[N,3:0]; E:= @int
for i,Si in S:
  for j in 0..2:
    M[i][j]+=M[i-1][j]
    X[^(i+1)][j]+=X[^i][j]
  if Si=='M': M[i][A[i]]+=1
  if Si=='E': E.add(i)
  if Si=='X': X[i][A[i]]+=1
a:=0
for Ei in E:
  if A[Ei]==0:
    a+=M[Ei][0]*X[Ei][0]
    +M[Ei][1]*X[Ei][0]