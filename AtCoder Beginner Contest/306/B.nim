import atcoder/header,sequtils,math
let A=newSeqWith(64,nextInt())
var a:uint=0
for i,Ai in A:a+=uint(Ai)*uint(2)^i
echo a