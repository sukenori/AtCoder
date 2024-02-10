include atcoder/header
let T=nextInt()
for _ in 1..T:
  let x=newSeqWith(3,nextInt()).sorted
  let d=x[2]-x[0]+x[1]-x[0]
  echo if d mod 6==0: d div 6 else: -1