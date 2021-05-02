import os
import bsddb3

database1 = db.DB()
database2 = db.DB()
database3 = db.DB()
database4 = db.DB()

def sortingFiles():
	cmd = "sort -u "
	files[3] = {'scores.txt', 'pterms.txt', 'rterms.txt'}
	i = 0
	for f in files:
		cmd += f
		os.system(cmd)

def buildHash():
	global database1
	dbFile = 'rw.idx'
	database1.open(dbFile, None, db.DB_HASH, db.DB_CREATE)

def buildBTree():
	global database2, database3, database4
	dbFile[3] = {'pt.idx', 'rt.idx', 'sc.idx'}
	database2.open(dbFile[0], None, db.DB_BTREE, db.DB_CREATE)
	database3.open(dbFile[1], None, db.DB_BTREE, db.DB_CREATE)
	database4.open(dbFile[2], None, db.DB_BTREE, db.DB_CREATE)

def insertValues():
	

def main():
	sortingFiles()
	buildHash()
	buildBTree()

main()	