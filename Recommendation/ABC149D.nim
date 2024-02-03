include atcoder/extra/header/chaemon_header
let N,K=nextInt()
let R,S,P=nextInt()
T:=nextString()
t:=""; a:=0
for i,Ti in T:
  case Ti:
    of 'r':
      if i<=K or t[i-K]!='p': a+=P; t&="p"
      elif i+K<N:
        if t[i+K]=='r': t&="r"
        elif t[i+K]=='s': t&="s"
        else: t&=""
      else:
    of 's':
      if i<=K or T[i-K]=dp[i-K][0]: dp[i][0]+=R
    else:
      if i<=K or dp[i-K].max!=dp[i-K][1]: dp[i][1]+=S
echo dp[N].max