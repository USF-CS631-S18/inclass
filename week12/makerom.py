import sys

hexdigits =  ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f']

print "v2.0 raw"

for line in sys.stdin:
    tokens = line.split()
    if len(tokens) < 2:
        continue
    if len(tokens[1]) != 8:
        continue
    if tokens[1][0] not in hexdigits:
        continue
    print tokens[1]

