var g=newSeqWith(N,newSeq[int](0))
for _ in 1..M:
  let u,v=nextInt()-1
  g[u].add(v); g[v].add(u)

var g=newSeqWith(N,newSeq[tuple[t,w:int]](0))
for _ in 1..M:
  let u,v=nextInt()-1
  let w=nextInt()
  g[u].add((v,w)); g[v].add((u,w))