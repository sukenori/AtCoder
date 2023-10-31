include atcoder/extra/header/chaemon_header
N:=nextInt()
let R,C=nextString()
t:=newTable[char,seq[string]]()
a:=".".repeat(N-3)&"ABC"
while true:
  h:=a.replace(".")[0]
  if t.hasKey(h): t[h].add(a) else: t[h]= @[a]
  if not a.nextPermutation(): break
A:=Seq[seq[string]]
for Ri in R: A.add(t[Ri])
for Ai in product(A):
  At:=(block: collect(newSeq):
    for j in 0..<N<<1: Ai.mapIt(it[j]))
  echo At.join