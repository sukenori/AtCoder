var
  l=0.0
  r=10.0^n
while r-l>pow(10,-6.0):
  let
    m1=(2*l+r)/3
    m2=(l+2*r)/3
  if f(m1)>f(m2): l=m1
  else: r=m2