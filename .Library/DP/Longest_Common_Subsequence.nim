proc lcs(S,T:string):int=
  lS:=S.len
  lT:=T.len
  dp:=Seq[lS+1,lT+1:int]
  for i in 1..lS:
    for j in 1..lT:
      dp[i][j]=[dp[i-1][j],dp[i][j-1],if S[i-1]==T[j-1]: dp[i-1][j-1]+1 else: 0].max
  return dp[^1][^1]