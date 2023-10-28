include atcoder/extra/header/chaemon_header
t:=Seq[seq[int]]
proc f(i:int)=
  if i==3: echo t
  else:
    for j in 0..<t.len:
      t[j].add(i); f(i+1); discard t[j].pop
    t.add(@[i]); f(i+1); discard t.pop   
f(0)