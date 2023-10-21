g:=Seq[N,0:int]
for i in 1..M:
  let u,v=nextInt()-1
  g[u].add(v); g[v].add(u)

g:=Seq[N,0:tuple[t,w:int]]
for i in 1..M:
  let u,v=nextInt()-1
  w:=nextInt()
  g[u].add((v,w)); g[v].add((u,w))