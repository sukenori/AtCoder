import atcoder/extra/graph/warshall_floyd
g:=Seq[N,N:int.inf]
for i in 0..<N: g[i][i]=0
for _ in 1..M:
  let u,v=nextInt()-1
  w:=nextInt()
  g[u][v]=w
d:=g.warshallFloyd
#echo d[s,t]
#echo d.path(s,t)