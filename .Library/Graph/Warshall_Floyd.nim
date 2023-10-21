import atcoder/extra/graph/warshall_floyd
var g=Seq[N,N:int.inf]
for _ in 1..M:
  let
    u,v=nextInt()-1
    w=nextInt()
  g[u][v]=w
var d=g.warshallFloyd
#echo d[s,t]
#echo d.path(s,t)