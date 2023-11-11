include atcoder/extra/header/chaemon_header
N:=nextInt()
m:=Seq[N:(0.0,0)]
for i in 0..<N:
  let A,B=nextInt()
  m[i]=(-A/(A+B),i+1)
echo m.sorted.mapIt(it[1]).join(" ")