import socket
from threading import Thread
from SocketServer import ThreadingMixIn
import psycopg2
import psycopg2.extras
import sys

conn_string = "host='localhost' dbname='train' user='postgres' password='yashu'"
conn = psycopg2.connect(conn_string)
cur = conn.cursor()



def see_table():
	global cur;
	global conn;
	start_send =conn.recv(2048)
	print "Enter see_table"
	cur.execute("SELECT * FROM train")
		#MESSAGE = raw_input("Multithreaded Python server : Enter Response from Server/Enter exit:")
			#if MESSAGE=='exit':
			#	break
	row =cur.rowcount
	data_row = cur.fetchone()
	j =1
	while data_row and j !=12:
		data_row = list(data_row)
		n =len(data_row)
		buffer =''
		for i in range(0,n):
			print(str(data_row[i]))
			temp = str(data_row[i])
			if(i==n-1):
				temp+= '\n'
			else:
				temp+='\t'
			buffer = buffer+temp
			print buffer
		while buffer:
			bytes = conn.send(buffer)
			buffer = buffer[bytes:] 
		confirm = conn.recv(2048)   #recevinig the row confrimation
		data_row = cur.fetchone() 
		j =j+1
	return

def choose_tickets():
	global conn
	name = conn.recv(2048)
	conn.send("Name recived")
	gender = conn.recv(2048)
	conn.send("Gender recived") 
	age = int(conn.recv(2048))
	conn.send("age recived")
	mob_no = int(conn.recv(2048))
	conn.send("mob no recived")
	train_no =(conn.recv(2048))
	conn.send("train no recived")
	no_seats =int(conn.recv(2048))
	conn.send("no of seats recived")
	#print name + gender+ str(age)+ str(mob_no)
	try:
    		conn_ct = psycopg2.connect("dbname='train' user='postgres' host='localhost' password='yashu'")
		conn_ct.autocommit = True
	except:
    		print "I am unable to connect to the database.\n Sorry for inconvience"
	cur_ct = conn_ct.cursor()
	ct_dict ={}
	ct_dict['name']= name
	ct_dict['gender']=gender
	ct_dict['age']=age
	ct_dict['mobile_number']=mob_no
	print ct_dict 
	cur_ct.execute("""INSERT INTO passenger(name,gender,age,mobile_number) VALUES (%(name)s, %(gender)s ,%(age)s ,%(mobile_number)s)""", ct_dict)
	cur_ct.execute("SELECT pnr FROM passenger WHERE name=%(name)s",{'name':name})
	pnr = cur_ct.fetchone()
	pnr_no= pnr[0]
	tid_no ={}
	tid_no['tid']=train_no
	#print tid
	cur_ct.execute("SELECT * FROM train WHERE tid=%(tid)s",tid_no)
	for record in cur_ct:
		str_jor=record[2]
		end_jor =record[3]
		rem_seats = record[5]
	book_dict ={}
	book_dict['pnr']=pnr_no
	book_dict['tid']= train_no
	book_dict['str_jor']=str_jor
	book_dict['end_jor']=end_jor
	book_dict['no_seat_booked']=no_seats
	cur_ct.execute("""INSERT INTO BOOKS(pnr,tid,str_jor,end_jor,no_seat_booked) VALUES (%(pnr)s, %(tid)s ,%(str_jor)s ,%(end_jor)s,%(no_seat_booked)s)""", book_dict)
	rem_seats = int(rem_seats) - no_seats
		
	sql = """ UPDATE train SET remseat = """+str(rem_seats)+" WHERE tid = "+ "'" + str(train_no)+ "'"+";"
	cur_ct.execute(sql)
	conn.send("Upadation done")
	
	#upd_dic= {'remseats':rem_seats, 'tid':tid_no}
	#cur_ct.execute("""UPDATE train SET remseat = %(remseats)s WHERE tid=%(tid)s""",upd_dic)	
	#cur_ct.execute("""UPDATE train SET remseat ="+ str()" WHERE tid=%(tid_no)s""",upd_dic)		
	cur_ct.execute("SELECT * FROM train WHERE tid=%(tid)s",tid_no)
	for record in cur_ct:
		print record

def cancel_tickets():
	name=conn.recv(2048)
	try:
    		conn_ct = psycopg2.connect("dbname='train' user='postgres' host='localhost' password='yashu'")
		conn_ct.autocommit = True
	except:
    		print "I am unable to connect to the database.\n Sorry for inconvience"
	cur_ct = conn_ct.cursor()
	cur_ct.execute("SELECT pnr FROM passenger WHERE name=%(name)s",{'name':name})
	pnr = cur_ct.fetchone()
	if(pnr is None):
		conn.send(str(0))
		bf = conn.recv(2048)
		return
	else:
		conn.send(str(1))
		bf = conn.recv(2048)		
	#pnr_no= pnr[0]
	pnr_no ={}
	pnr_no['pnr']=pnr[0]
	cur_ct.execute("DELETE FROM BOOKS WHERE pnr=%(pnr)s",pnr_no)
	cur_ct.execute("DELETE FROM passenger WHERE name=%(name)s",{'name':name})
	conn.send("deletion done")
	return


def route_details():
	train_no =conn.recv(2048)
	try:
    		conn_rd = psycopg2.connect("dbname='train' user='postgres' host='localhost' password='yashu'")
		conn_rd.autocommit = True
	except:
    		print "I am unable to connect to the database.\n Sorry for inconvience"
	cur_rd = conn_rd.cursor()	
	cur_rd.execute("SELECT *FROM route WHERE tid=%(tid)s",{'tid':train_no})
	pnr = cur_rd.fetchone()
	conn.send(str(pnr[0]))
	conn.recv(2048)
	conn.send(str(pnr[1]))
	conn.recv(2048)
	conn.send(str(pnr[2]))
	conn.recv(2048)
	conn.send(str(pnr[3]))
	conn.recv(2048)
	return

	

def view_details():
	name=conn.recv(2048)
	try:
    		conn_vd = psycopg2.connect("dbname='train' user='postgres' host='localhost' password='yashu'")
		conn_vd.autocommit = True
	except:
    		print "I am unable to connect to the database.\n Sorry for inconvience"
	cur_vd = conn_vd.cursor()
	cur_vd.execute("SELECT pnr FROM passenger WHERE name=%(name)s",{'name':name})
	pnr = cur_vd.fetchone()
	if(pnr is None):
		conn.send("0")
		bf = conn.recv(2048)
		return
	else:
		conn.send("1")
	#pnr_no= pnr[0]
	pnr_no ={}
	pnr_no['pnr']=pnr[0]
	cur_vd.execute("SELECT * FROM BOOKS WHERE pnr=%(pnr)s",pnr_no)
	details = cur_vd.fetchone()
	conn.send(str(details[0])) #send pnr no
	confirm=conn.recv(2048)
	conn.send(str(details[1]))
	confirm =conn.recv(2048)
	conn.send(str(details[2]))
	confirm =conn.recv(2048)
	conn.send(str(details[3]))
	confirm =conn.recv(2048)
	conn.send(str(details[4]))
	confirm =conn.recv(2048)
	print confirm
	for record in cur_vd:
		print record
	return

def begin():
	while True:
		option = conn.recv(2048)  #obtaining option from the client
		conn.send("Recived")
		#print "option:", option
		option = int(option)
		#print "option: ",option
		if (option==1):
			see_table()
			choose_tickets()
		if (option==2):
			choose_tickets()
		if(option==3):
			cancel_tickets()
		if (option==4):
			view_details()
		if (option==5):
			route_details()
		if (option ==6):
			for t in threads:
				t.join()
				break
			break
		#option = conn.recv(2048)
		
		#if option =='exit':
		#	break
		
		#print "I'm done"
		#data =conn.recv(2048)
		#print data
		#print "All data sent.BYE"
		

class ClientThread(Thread):

	def __init__(self,ip,port):
		Thread.__init__(self)
		self.ip=ip
		self.port=port
		print "[+] New server socket thread started fro " +ip + ":" + str(port)
	
	def run(self):
		begin();
		while True:
			data = conn.recv(2048)
			print "Server received data:", data
			MESSAGE = raw_input("Multithreaded Python server : Enter Response from Server/Enter exit:")
			if MESSAGE=='exit':
				for t in threads:
					t.join()
				break
			conn.send(MESSAGE) #echo
		
#Multithreaded Python server : TCP Server Socket Program Stub
TCP_IP = '0.0.0.0'
TCP_PORT = 2211
BUFFER_SIZE = 20 #Usually 1024,but we need quick response

tcpServer = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
tcpServer.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
tcpServer.bind((TCP_IP,TCP_PORT))
threads=[]

tcpServer.listen(5)
print "Multithreaded Python server : Waiting for connections from TCP clients..."
(conn, (ip,port)) = tcpServer.accept()
newthread = ClientThread(ip,port)
newthread.start()
threads.append(newthread)




'''
while True:
	tcpServer.listen(5)
	print "Multithreaded Python server : Waiting for connections from TCP clients..."
	(conn, (ip,port)) = tcpServer.accept()
	newthread = ClientThread(ip,port)
	newthread.start()
	threads.append(newthread)
'''

for t in threads:
	t.join()

