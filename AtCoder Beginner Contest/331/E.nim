include atcoder/extra/header/chaemon_header
var N,M,L=nextInt()
a:=Seq[N:(0,0)]
for i in 0..<N: a[i]=(nextInt(),i)
a.sort(Descending)
b:=Seq[M:(0,0)]
for i in 0..<M: b[i]=(nextInt(),i)
b.sort(Descending)
var s:HashSet[(int,int)]
for _ in 1..L: s.incl((nextInt(),nextInt()))
