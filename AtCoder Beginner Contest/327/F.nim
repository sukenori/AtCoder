include atcoder/extra/header/chaemon_header
let N,D,W=nextInt()
A:=Seq[2*10^5: @int]
mT:=0; mX:=0
for _ in 1..N:
  let T,X=nextInt()-1; A[T].add(X)
  mT.max=T; mX.max=X
echo A[0..6]
n:=1; while n<mX+1: n*=2
var s=Seq[2*n-1:0]
a:=0
for t in 0..mT:
  proc p(a,b,x,k,l,r:int)=
    if r<=a or b<=l: return    
    elif a<=l and r<=b:
      s[k]+=x
      i:=k
      while i>0: s[(i-1)//2].max=s[i]; i=(i-1)//2
      proc c(j:int)=
        if j<n-1:
          s[2*j+1]+=x; c(2*j+1)
          s[2*j+2]+=x; c(2*j+2)
      c(k)
    else: p(a,b,x,2*k+1,l,(l+r)//2); p(a,b,x,2*k+2,(l+r)//2,r)
  for x in A[t]: p(max(0,x-(W-1)),min(x+(W-1),mX),1,0,0,n)
  if t-(D-1)>=0:
    for x in A[t-(D-1)]: p(max(0,x-(W-1)),min(x+(W-1),mX),-1,0,0,n)
  a.max=s[0]
  echo s
echo a