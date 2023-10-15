include atcoder/extra/header/chaemon_header
let N,M=nextInt()
var g=Seq[N,0:tuple[t,b,c:int]]
for i in 1..M:
  let
    u,v=nextInt()-1
    b,c=nextInt()
  g[u].add((v,b,c))
var
  bc=Seq[N:(b:0,c:0)]
  q=[0].toDeque
  d=Seq[N:false]
while q.len>0:
  var i=q.popFirst; d[i]=true
  for j in g[i]:
    if not d[j.t]:
      if bc[j.t].c==0 or bc[j.t].b/bc[j.t].c<(bc[i].b+j.b)/(bc[i].c+j.c):
        bc[j.t].b=bc[i].b+j.b; bc[j.t].c=bc[i].c+j.c
      q.addLast(j.t)
echo bc[N-1]
echo bc[N-1].b/bc[N-1].c