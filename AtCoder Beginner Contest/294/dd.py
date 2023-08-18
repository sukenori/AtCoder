n,q=map(int,input().split())
from collections import deque
mada=deque(range(1,n+1))
import bisect
retu=set()
mini=n
for i in range(q):
    qu,*x=map(int,input().split())
    #print(qu,x)

    if qu==1:
        bisect.insort_left(retu,mada.popleft())
    if qu==2:
        retu.pop(bisect.bisect_left(retu,x[0]))
    if qu==3:
        print(retu[0])