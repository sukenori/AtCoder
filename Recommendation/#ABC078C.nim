include atcoder/header
var N,M=nextInt()
var X=0
while M>0:
  X+=(M div 2)*1900+(N-M)*100
  M=M div 2
echo X