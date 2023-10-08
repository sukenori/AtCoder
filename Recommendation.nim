include atcoder/header
import atcoder/modint
type mint=modint998244353
let
  N,X=nextInt()
  T=newSeqWith(N,nextInt())
var dp=newSeq[mint](X+1)
dp[0]=1
for i in 1..X:
  for t in T:
    if i-t >= 0:
      dp[i] += dp[i-t] / N

var result = mint(0)
for i in 0..<T[0]:
  if X-i >= 0:
    result += dp[X-i] / N
echo result
