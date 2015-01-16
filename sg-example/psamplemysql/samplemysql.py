#!/usr/bin/python

import MySQLdb as mdb
import sys
import os
import traceback
import urlparse

svc_uri = os.environ.get('MYSQL_URI')
print 'Service URI: '
print svc_uri
con = None

if svc_uri is None:
	print 'MYSQL_URI not set'
	sys.exit(-1)

try:
	conn_tpl = urlparse.urlparse(svc_uri)
	con = mdb.connect(host=conn_tpl.hostname,database=conn_tpl.path,user=conn_tpl.username,password=conn_tpl.password)
	cur = con.cursor()
	cur.execute('CREATE TABLE testtable (id INT)')
	cur.execute('INSERT INTO testtable (id) VALUES (5)')
	cur.execute('SELECT * from testtable')
	ver = cur.fetchone()
	print ver	

except mdb.Error, e:
	print 'Error  %d: %s' % (e.args[0],e.args[1])
	sys.exit(1)

finally:
	if con:
		con.close()
	
