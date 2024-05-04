import atcoder/extra/other/direction
for (ni,nj) in (i,j).neighbor(dir4,(0..<H,0..<W)): #dir8

for (di,dj) in [(-1,0),(0,1),(1,0),(0,-1)]:
  let (ni,nj)=(i+di,j+dj)
  if ni in 0..<H and nj in 0..<W and 

#Sentinel
let m=newSeqWith(H,"#"&nextString()&"#")
for i in [0,H+1]: m.insert("#".repeat(W+2),i)