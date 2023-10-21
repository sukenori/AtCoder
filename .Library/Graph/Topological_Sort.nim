var
  g=newSeqWith(N,newSeq[int]())
  ind=newSeqWith(N,0)
for _ in 1..M:
  let u,v=nextInt()-1
  g[u].add(v); ind[v]+=1
var a=newSeq[int]()
while a.len<N:
  let i=ind.find(0)
  a.add(i+1); ind[i]= -1
  for j in g[i]: ind[j]-=1
#echo a