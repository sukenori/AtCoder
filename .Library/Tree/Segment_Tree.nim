import atcoder/segtree
s:=initSegTree[int](N,(a,b:int)=>min(a,b),()=>int.inf)
for i,di in d:
  if di<s.get(i): s.set(i,di)
prod(a..<b)

n:=1; while n<N: n*=2
st:=Seq[2*n-1:int.inf]
proc u(i,v:int)=
  j:=n-1+v; st[j]=v
  while j>0:
    j=(j-1)//2
    st[j]=min(st[2*j+1],st[2*j+2])
proc q(a,b,k,l,r:int):int=
  if r<=a or b<=l: return int.inf
  elif a<=l and r<=b: return st[k]
  else:
    return min(q(a,b,2*k+1,l,(l+r)//2),q(a,b,2*k+2,(l+r)//2,r))