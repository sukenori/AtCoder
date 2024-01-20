include atcoder/extra/header/chaemon_header
N:=nextInt()
f:=[(N,1)].toTable; n:=N
for i in 2..N.float.sqrt.int:
  while n%i==0:
    if f.hasKeyOrPut(i,0): f[i]+=1; n//=i
echo f
a:=0
for fi in f.values:
  i:=fi; j:=1
  while i>0: a+=1; i-=j; j+=1
echo a