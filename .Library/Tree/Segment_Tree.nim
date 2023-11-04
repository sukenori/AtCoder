import atcoder/segtree
s:=initSegTree[int](N,(a,b:int)=>min(a,b),()=>int.inf)
for i,di in d:
  if di<s.get(i): s.set(i,di)
prod(a..<b)

n:=1; while n<N: n*=2
s:=Seq[2*n-1:int.inf]
for di in d:
  i:=n-1+di
  while true:
    s[i].min=di
    if i>0: i=(i-1)//2 else: break
proc p(a,b,k,l,r:int):int=
  if r<=a or b<=l: return int.inf
  elif a<=l and r<=b: return s[k]
  else:
    return min(p(a,b,2*k+1,l,(l+r)//2),p(a,b,2*k+2,(l+r)//2,r))