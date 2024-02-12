import heapqueue
var q=[(d:0,i:0)].toHeapQueue
var d=newSeqWith(N,int.inf); d[0]=0
while q.len>0:
  let i=q.pop
  for j in g[i.i]:
    let nw=i.d+j.w
    if nw<d[j.t]: d[j.t]=nw; q.push((nw,j.t))
#echo d[^1]