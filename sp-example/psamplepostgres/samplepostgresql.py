#!/usr/bin/python

import psycopg2
import sys
import os
import traceback
import urlparse

svc_uri = os.environ.get('POSTGRES_URI')
print 'Service URI: '
print svc_uri
con = None

if svc_uri is None:
	print 'POSTGRES_URI not set'
	sys.exit(-1)

try:
	conn_tpl = urlparse.urlparse(svc_uri)
	con = psycopg2.connect(host=conn_tpl.hostname,database=conn_tpl.path,user=conn_tpl.username,password=conn_tpl.password)
	cur = con.cursor()
	cur.execute('CREATE TABLE testtable (id INT)')
	cur.execute('INSERT INTO testtable (id) VALUES (5)')
	cur.execute('SELECT * from testtable')
	cur.execute('DELETE from testtable WHERE id=5;')
	ver = cur.fetchone()
	print ver	

except psycopg2.DatabaseError, e:
	print 'Error %s' % e
	sys.exit(1)

finally:
	if con:
		con.close()
	
