include atcoder/header
let n=nextInt()
let v=newSeqWith(n,nextInt())
let a0=(0..<n).toSeq.filterIt(it mod 2==0).mapIt(v[it]).toCountTable.pairs.toSeq.mapIt((it[1],it[0])).sorted(Descending)
let a1=(0..<n).toSeq.filterIt(it mod 2==1).mapIt(v[it]).toCountTable.pairs.toSeq.mapIt((it[1],it[0])).sorted(Descending)
echo n div 2-a0[0][0]+n div 2-a1[0][0]