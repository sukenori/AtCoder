include atcoder/header
let N=nextInt()
var t:Table[(int,char),seq[(int,char)]]
for _ in 1..N:
  let S=nextString()
  for i in 0..<S.len:
    if not t.hasKey((i,S[i])): t[(i,S[i])]=newSeq[(int,char)](0)
    if i>0: t[(i-1,S[i-1])].add((i,S[i]))
for k,v in t: echo (k,v)
var a=0
for k,v in t: a+=v.len*(v.len) div 2
echo a