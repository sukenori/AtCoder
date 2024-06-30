for i in 1..N:
  dp[i]=max(dp[i-1]+A[i-1],A[i-1])
  a.max=dp