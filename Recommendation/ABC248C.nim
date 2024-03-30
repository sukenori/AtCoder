include atcoder/header
let N,M,K=nextInt()
import atcoder/modint
type mint=modint998244353
var dp=newSeqWith(N+1,newSeqWith(K+1,0.mint))
dp[0][0]=1.mint
for i in 1..N:
  for j in 1..K:
    dp[i][j]=dp[i-1][max(0,j-M)..j-1].sum
echo dp[N][N..K].sum