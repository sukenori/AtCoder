import atcoder/lazysegtree
type
  S=int
  F=int
proc op(a,b:S):S=a,b
proc e():S= #全てのaに対してop(a,e)=op(e,a)=aを満たすもの
proc mapping(f:F,x:S):S=x,f #各dataのxにlazyのfをどう反映させるか
proc composition(f,g:F):F=f,g #lazyのgに対して次のfをどう反映させるか
proc id():F=0 #全てのaに対してmapping(id,a)=aとなるもの
n:= 
s:=LazySegTree.getType(S,F,op,e,mapping,composition,id).init(n)

n:=1; while n<N: n*=2
var st,lz=Seq[2*n-1:0]
for i in 0..<N: st[n-1+i]=d[i]
for i in 0..n-2<<1: st[i]=max(st[2*i+1],st[2*i+2])
proc e(k:int)=
  if lz[k]!=0:
    st[k]+=lz[k]
    if k<n-1:
      lz[2*k+1]+=lz[k]
      lz[2*k+2]+=lz[k]
    lz[k]=0
proc u(a,b,v:int;k,l=0;r=n)=
  e(k)
  if a<=l and r<=b:
    lz[k]=v
    e(k)
  elif a<r and l<b:
    u(a,b,v,2*k+1,l,(l+r)//2)
    u(a,b,v,2*k+2,(l+r)//2,r)
    st[k]=max(st[2*k+1],st[2*k+2])
proc q(a,b:int;k,l=0;r=n):int=
  e(k)
  if r<=a or b<=l: return 0
  elif a<=l and r<=b: return st[k]
  else:
    return max(q(a,b,2*k+1,l,(l+r)//2),q(a,b,2*k+2,(l+r)//2,r))