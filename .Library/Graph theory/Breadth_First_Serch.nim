var
  q=[0].toDeque
  d=newSeqWith(N,false)
while q.len>0:
  var i=q.popFirst; d[i]=true
  for j in g[i]:
    if not d[j.t]:
      q.addLast(j.t)