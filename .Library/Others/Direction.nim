import atcoder/extra/other/direction
for (ni,nj) in (i,j).neighbor(dir4,(0..<H,0..<W)): #dir8

#Sentinel
m:=Seq[H:"#"&nextString()&"#"]
for i in [0,H+1]: m.insert("#".repeat(W+1),i)