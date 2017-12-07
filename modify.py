import sys
def modify(i):
    path='/root/gopath/src/github.com/yeongchingtarn/geth-pbft/node/core.yaml'
    f = open(path, 'r+')
    linelist = f.readlines()
    f.seek(0)
    for line in linelist:
	if line.find('fileSystemPath')!=-1:
		new_line=line.split(':')[0]+': '+i+'\n'
		line=line.replace(line,new_line)
	f.write(line)
    f.close()
    print 'finished!'

a=sys.argv[1]
modify(a)

