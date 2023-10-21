for i in 0..<N:
  for j in countdown(W,w[i]):
    dp[j].max=dp[j-w[i]]+v[i]
echo dp[W]

for i in 0..<N:
  for j in w[i]..W:
    dp[j].max=dp[j-w[i]]+v[i]
echo dp[W]