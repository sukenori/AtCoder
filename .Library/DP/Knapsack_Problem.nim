for i in 0..<N:
  for j in w[i]..W<<1:
    dp[j].max=dp[j-w[i]]+v[i]
echo dp[W]

#Unbounded
for i in 0..<N:
  for j in w[i]..W:
    dp[j].max=dp[j-w[i]]+v[i]
echo dp[W]