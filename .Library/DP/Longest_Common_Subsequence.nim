proc lcs(S,T:string):int=
  let
    lS=S.len
    lT=T.len
  var dp=newSeqWith(lS+1,newSeq[int](lT+1))
  for i in 1..lS:
    for j in 1..lT:
      dp[i][j]=[dp[i-1][j],dp[i][j-1],dp[i-1][j-1]+(S[i-1]==T[j-1]).int].max
  return dp[^1][^1]