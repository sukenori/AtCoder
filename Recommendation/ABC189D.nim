include atcoder/header
let N=nextInt()
let S=newSeqWith(N,nextString())
var y=newSeqWith(N+1,newSeq[int](2))
y[0][0]=1; y[0][1]=1
for i in 1..N:
  if S[i-1]=="AND":
    y[i][0]=y[i-1][0]*2+y[i-1][1]
    y[i][1]=y[i-1][1]
  else:
    y[i][0]=y[i-1][0]
    y[i][1]=y[i-1][0]+y[i-1][1]*2
echo y[N][1]