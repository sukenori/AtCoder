q:=[0].toDeque
d:=Seq[N:false]
while q.len>0:
  var i=q.popFirst; d[i]=true
  for j in g[i]:
    if not d[j.t]:
      q.addLast(j.t)