a,b,c=map(int,input().split())
print(sum(c%i==0 for i in range(a,b+1)))