include atcoder/extra/header/chaemon_header
import atcoder/modint
let Q,K=nextInt()
var dp=newSeq[modint998244353](K+1); dp[0]=1
for _ in 1..Q:
  let q=nextString()
  let x=nextInt()
  for i in 0..K-x<<1:
    dp[i+x]=dp[i]
  if q=="+":
     
  else:
    for i in 0