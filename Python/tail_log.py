import time
import sys


def taillog(filename):
	print "Working with file ", filename
	f = open(filename[0])
	p = 0
	while True:
		f.seek(p)
		latest_data = f.read()
		p = f.tell()
		if latest_data:
			print(latest_data)
			start = time.asctime( time.localtime(time.time()))
			print(start.center(10).center(80, '='))
		
		
if __name__ == "__main__":
	taillog(sys.argv[1:])