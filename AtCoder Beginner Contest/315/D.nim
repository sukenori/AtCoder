include atcoder/extra/header/chaemon_header
let
  H,W=nextInt()
  c=newSeqWith(H,nextString())
var
  d=newSeqWith(H,newSeqWith(W,true))
  f=true
while f:
  f=false
  for i in 0..H:
    var s:HashSse[int]
    for j in 0..W:
      if d[i][j]



echo c.mapIt(it.len).sum