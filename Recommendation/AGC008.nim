include atcoder/header
var x,y=nextInt()
echo [y-x,y+1+x,1-y-x,1-y+1+x].filterIt(it>=0).min