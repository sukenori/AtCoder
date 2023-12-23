include atcoder/extra/header/chaemon_header
let N,M=nextInt()
l:=[1].toDeque
d:=Seq[N+1:false]; d[1]=true
while true:
  k:=nextInt()
  w:=Seq[k:nextInt()]
  block b:
    for wi in w:
      if not d[wi]:
        echo wi
        if wi==N: quit()
        d[wi]=true
        l.addLast(wi)
        break b
    echo l.popLast