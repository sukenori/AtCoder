include atcoder/extra/header/chaemon_header
var c,s=nextString()
a:=""
if c=="compress":
  s&="#"; lsi:=s[0]; var cs,dcs= $s[0]
  for si in s[1..^1]:
    if si==lsi:
      if dcs.len>1: a &= "-" & $(dcs.len-1)&dcs[0..^2]
      cs &= $si; dcs= $si
    else:
      if cs.len>1: a &= $(cs.len) & $cs[0]
      elif si=='#': a &= "-" & $(dcs.len-1)&dcs[1..^1]
      dcs &= $si; cs= $si
    lsi=si
if c=="decompress":
  dc:=false; f:=false; n:=""
  for si in s:
    if si=='-': dc=true
    elif si.isDigit:
      if dc:
        if f: n &= $si; dc=false; f=false
        else: continue
      else: n &= $si
    else:
      if dc: a &= $si; f=true
      else: echo n; a &= $si.repeat(n.parseInt); n=""
echo a