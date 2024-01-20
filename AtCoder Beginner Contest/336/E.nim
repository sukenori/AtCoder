include atcoder/extra/header/chaemon_header
N:=nextInt()
dp:=Seq[15,9*14,9*14,2:0]
for s in 1..9*14:
  dp[d+1][i+t][(j*10+t)%s][]+=dp[d][i][j][f]
echo