include atcoder/extra/header/chaemon_header
N:=nextInt()
a:=0
for A in 1..N.float.cbrt.int:
  for B in A..N.float.sqrt.int:
    a+=N//B//A
echo a