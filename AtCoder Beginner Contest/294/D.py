n,q=map(int,input().split())
from collections import deque
mada=deque(range(1,n+1))
import bisect
retu=[]
owari=set()
for i in range(q):
    qu,*x=map(int,input().split())
    #print(qu,x)

    if qu==1:
        bisect.insort_left(retu,mada.popleft())
    if qu==2:

        owari.add(x[0])
    if qu==3:
        for _ in retu:
            if not _ in owari:
                print(_)
                break