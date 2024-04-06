include atcoder/header
let S=nextString()
var t:Table[char,int]
var a=0
var l=0
for i in 0..<S.len-2:
  if t.hasKey(S[i]) and i>t[S[i]] and t[S[i]]==l: a-=1
  elif S[i]==S[i+1] and S[i+1]!=S[i+2]:
    t[S[i]]=i+2
    l=i+2
for v in t.values: a+=S.len-v
echo a