include atcoder/extra/header/chaemon_header
let N,M=nextInt()
X:=Seq[3: @int]
for _ in 0..<N: X[nextInt()].add(nextInt())
for i in 0..2: X[i].sort
s:=max(M-X[0].len,0); l:=0
ai:=X[0][s..^1].sum; a:=0
while true:
  if s==0:
    if X[0].len==0: break
    s=1; ai-=X[0].pop
  elif l==0:
    if X[2].len==0: break
    s-=1; l=X[2].pop
  else:
    if X[1].len==0: break
    l-=1; s-=1; ai+=X[1].pop
  a.max=ai
echo a