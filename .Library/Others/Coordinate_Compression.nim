import atcoder/extra/other/compress
c:=a.initCompress
c.id(a[i])

c:=a.toHashSet.toSeq.sorted
c.lowerBound(a[i])

o:=(0..<N).toSeq.sortedByIt(a[it])