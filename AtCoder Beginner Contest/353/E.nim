include atcoder/header
let N=nextInt()
import deques
var t:Table[Deque[char],int]
for _ in 1..N:
  var d:Deque[char]
  let S=nextString()&" "
  for i,Si in S:
    if i>0: t[d]+=1
    d.addLast(Si)
    if not t.hasKey(d): t[d]=0
var a=0
for v in t.values: a+=v*(v-1) div 2
echo a