import heapqueue
q:=[(d:0,i:0)].toHeapQueue
d:=Seq[N:int.inf]; d[0]=0
while q.len>0:
  i:=q.pop
  for j in g[i.i]:
    if nw:=i.d+j.w<d[j.t]:
      d[j.t]=nw; q.push((nw,j.t))
#echo d