# Python 3
# Fix Chinese character in Hong Kong's spcial encoding
import sys

for l in sys.stdin.readlines():
    # 埗
    l = l.replace('\ue88c', '\u57d7')
    sys.stdout.write(l)
