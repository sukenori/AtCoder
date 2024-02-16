include atcoder/header
let N=nextInt()
import atcoder/modint
type mint=modint1000000007
var s,n,a=1.mint
for i in 1..N: s*=10; n*=9; a*=8
echo s-n-n+a