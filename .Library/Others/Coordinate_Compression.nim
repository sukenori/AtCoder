import atcoder/extra/other/compress
c:=a.initCompress
c.id(a[i])

var t=newTable[int,int]()
for i,ai in a.toSet.toSeq.sorted: t[ai]=i