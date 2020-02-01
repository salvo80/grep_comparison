import time
import sys

if len(sys.argv) < 2:
	print("Usage:\npygrep word_to_look_for file_path")
	sys.exit(0)

p = sys.argv[1]
f = open(sys.argv[2], mode="r", encoding="ISO-8859-1")
res = ''
t = time.time()
for line in f.readlines():
	if line.find(p)>=0:
		print(line)
print('Done in ' + str(time.time()-t) + 's')