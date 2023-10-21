include atcoder/extra/header/chaemon_header
let
  N,M=nextInt()
  A=Seq[N:nextInt()].sorted
  B=Seq[M:nextInt()].sorted
var a=int.inf
for i in concat(B.reversed.succ.concat,A.reversed):
  if A.upperBound(i)>=M-B.lowerBound(i): a.min=i
echo a