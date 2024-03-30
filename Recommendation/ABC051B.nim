include atcoder/header
let K,S=nextInt()
var a=0
for X in 0..K:
  for Y in 0..K:
    if S-X-Y in 0..K: a+=1
echo a