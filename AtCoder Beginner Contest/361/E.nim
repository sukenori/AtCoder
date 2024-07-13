include atcoder/header
let N=nextInt()
var g=newSeqWith(N,newSeq[tuple[t,l:int]]())
for _ in 1..N-1:
  let
    A,B=nextInt()-1
    C=nextInt()
  g[A].add((B,C)); g[B].add((A,C))
var
  l=newSeq[int](N)
  p=newSeq[int]()
proc dfs(i:int)=
  for j in g[i]:
    if l[j.t]==0:
      l[j.t]=l[i]+j.l
      dfs(j.t)
  p.add(i+1)
dfs(0)
echo p