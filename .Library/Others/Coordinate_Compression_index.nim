import atcoder/extra/other/compress
let c=a.initCompress
c.id(a[i])

let c=a.toHashSet.toSeq.sorted
c.lowerBound(a[i])

#sorted sequence index インデックスの数の位置を格納
#aはそこにいくつが入っているか、oはそれが入っているのはどこか
let o=(0..<N).toSeq.sortedByIt(a[it])
let o=(1..N).toSeq.sortedByIt(a[it-1])