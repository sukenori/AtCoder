include atcoder/header
let N=nextInt()
let A=newSeqWith(N,newSeqWith(N-1,nextInt()-1))
var g=newSeqWith(N*N,newSeq[int](0))
var ind=newSeqWith(N*N,0)
proc f(i,j:int):int=min(i,j)*N+max(i,j)
for i in 0..<N:
  for j in 0..i: ind[i*N+j]= -1
for i in 0..<N:
  for j in 1..<N-1:
    g[f(i,A[i][j-1])].add(f(i,A[i][j]));
    ind[f(i,A[i][j])]+=1
var
  a=1
  t:seq[int]
  s:HashSet[int]
while true:
  let
    i=ind.find(0)
    d=i div N
    m=i mod N
  if i == -1: break
  if d in s or m in s: a+=1; s.clear
  t.add(i); s.incl(d); s.incl(m); ind[i]= -1
  for j in g[i]: ind[j]-=1
echo if t.len==(N^2-N) div 2: a else: -1