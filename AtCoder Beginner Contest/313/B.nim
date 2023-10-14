include atcoder/header
let N,M=nextInt()
include atcoder/extra/graph/topological_sort
#import atcoder/extra/graph/graph_template
var g=initGraph(N)
for _ in 1..M:
  let u,v=nextInt()
  g.addEdge(u,v)

#var a=g.topologicalSort
#echo a[0]