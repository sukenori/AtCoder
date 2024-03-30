include atcoder/header
let N=nextInt()
let a,b=newSeqWith(N,nextInt()).sorted
var g:seq[int]
for x in b.mapIt(a[0] xor it):
  if b.mapIt(x xor it).sorted==a: g.add(x)
g=g.deduplicate(true)
echo (@[g.len]&g).join("\n")