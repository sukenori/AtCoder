include atcoder/header
let N=nextInt()
var g=newSeqWith(N+1,newSeq[tuple[t,w:int]](0))
for i in 1..<N:
  let A,B,X=nextInt()
  g[i].add((i+1,A)); g[i].add((X,B))
import heapqueue
var q=[(d:0,i:1)].toHeapQueue
var d=newSeqWith(N+1,int.inf); d[1]=0
while q.len>0:
  let i=q.pop
  for j in g[i.i]:
    let nw=i.d+j.w
    if nw<d[j.t]: d[j.t]=nw; q.push((nw,j.t))
echo d[N]