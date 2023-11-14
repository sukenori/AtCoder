include atcoder/extra/header/chaemon_header
step:=nextInt()
case step
of 1:
  M:=nextInt()
  var t=newTable[int,tuple[S,P:int]]()
  for i in 0..<M:
    let D,S,P=nextInt()
    t[D]=(S,P)
  while true:
    let _=nextString()
    let T,D,N=nextInt()
    if t[D].S>=N:
      for i in 1..N:
        echo "recieved order ",T," ",D
      t[D].S-=N
    else: echo "sold out ",T
of 2:
  var M,K=nextInt()
  var t=newTable[int,tuple[S,P:int]]()
  for i in 0..<M:
    let D,S,P=nextInt()
    t[D]=(S,P)
  var order:Deque[int]
  var cook:set[int]
  while true:
    query:=nextString()
    if query=="received":
      let _=nextString()
      let T,D=nextInt()
      if cook.len<K:
        echo D; cook.incl(D)

    else:
      D:=nextInt()
    
else:
  quit()