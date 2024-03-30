include atcoder/header
let r1,c1,r2,c2=nextInt()
if r1==r2 and c1==c2: echo 0 
elif r1+c1==r2+c2 or r1-c1==r2-c2 or abs(r1-r2)+abs(c1-c2)<=3: echo 1
elif abs(r1-r2)+abs(c1-c2)<=6: echo 2
elif abs((r1+c1)-(r2+c2))<=3 or abs((r1-c1)-(r2-c2))<=3: echo 2
elif (r1+c1) mod 2==(r2+c2) mod 2: echo 2
else: echo 3