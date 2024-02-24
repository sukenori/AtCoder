let s=(@[0]&A).cumsummed
var
  r=1
  a=0
for l in 0..<s.len-1:
  while r<s.len-1 and s[r+1]-s[l]<=x: r+=1
  a.max=r-l
echo a