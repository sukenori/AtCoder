import atcoder/extra/other/compress
let c=a.initCompress
c.id(a[i])

let c=a.toHashSet.toSeq.sorted
c.lowerBound(a[i])

#sorted sequence index
let o=(0..<N).toSeq.sortedByIt(a[it])