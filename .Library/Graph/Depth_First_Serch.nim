var d=newSeqWith(N,false)
proc dfs(i:int)=
  d[i]=true
  for j in g[i]:
    if not d[j.t]:
      dfs(j.t)