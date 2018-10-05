#Python TCP Client A
import socket
import re

host = socket.gethostname()
port =2211
BUFFER_SIZE = 2000
MESSAGE = raw_input("Hello costmer!!! Welcome to train booking system.Press 1 to continue")


tcpClientA = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
tcpClientA.connect((host,port))

def readlines(sock, recv_buffer=4096, delim='\n'):
	buffer = ''
	data = True
	while data:
		data = sock.recv(recv_buffer)
		buffer += data
		while buffer.find(delim) != -1:
			line, buffer = buffer.split('\n', 1)
			yield line
			return
	return

def choose_tickets():
	global tcpClientA
	print "To choose tickets we need your data."
	print "Enter your data"
	name = raw_input ("Enter your name ")
	tcpClientA.send(name)
	reciv = tcpClientA.recv(2048)
	gend = raw_input ("Enter your gender(M/F) ")
	tcpClientA.send(gend)
	reciv = tcpClientA.recv(2048)
	age = raw_input ("Enter your age ")
	tcpClientA.send(str(age))
	reciv = tcpClientA.recv(2048)
	mob_no = raw_input ("Enter your mobile number ")
	tcpClientA.send(str(mob_no))
	reciv = tcpClientA.recv(2048)
	train_no = raw_input("Enter the train name ")
	#train_no = str(train_no)
	tcpClientA.send(train_no)
	reciv =tcpClientA.recv(2048)
	no_seats = raw_input("Enter the no of seats required")
	tcpClientA.send(str(no_seats))
	reciv = tcpClientA.recv(2048)
	reciv = tcpClientA.recv(2048)
	print "Your booking confirm"
	
	
def view_details():
	name = raw_input("Enter your name")
	tcpClientA.send(name)
	sts = tcpClientA.recv(2048)
	tcpClientA.send("1")
	if(int(sts)==0):
		print "No details Found"
		return
	pnr= tcpClientA.recv(2048)
	tcpClientA.send("recived")
	train_no= tcpClientA.recv(2048)
	tcpClientA.send("recived")
	source= tcpClientA.recv(2048)
	tcpClientA.send("recived")
	destinat= tcpClientA.recv(2048)
	tcpClientA.send("recived")
	no_of_seats= tcpClientA.recv(2048)
	#tcpClientA.send("recived111111")
	print "\n"	
	print "PNR Number ",pnr
	print "Train Number", train_no
	print "Source" , source
	print "Destination", destinat
	print "No of seats",no_of_seats
	print "\n\n"
	return

def cancel_ticket():
	name = raw_input("Enter the name with which ticket was booked:")
	tcpClientA.send(name)
	stats=tcpClientA.recv(2048)
	print "stats ",stats
	tcpClientA.send("Recived")
	if(int(stats)==0):
		print "No ticket booked to cancel"

		print "\n"
		return
	confirm=tcpClientA.recv(2048)
 	print "Cancellation done"
	print "\n"
	return
	
def see_train():
	print "Train Name   Train No    source  destination  class  remaining_seats   total_seats"
	global tcpClientA
	tcpClientA.send("3")
	print "Sent data"
	row=''
	for i in range (1,12):
		row =''
		for line in readlines(tcpClientA):
			row = row+line
		tcpClientA.send("RECIVED A ROW")
		print row
	
	print "These are available train details"
	option = raw_input("Do you want to choose among the available trains(Y/N)")
	if(option == 'N'):
		quit()
	else:
		choose_tickets()	



def route_details():
	train_no = raw_input("Enter your train number")
	tcpClientA.send(train_no)
	dat_arriv = tcpClientA.recv(2048)
	tcpClientA.send("Recived")
	dat_dep = tcpClientA.recv(2048)
	tcpClientA.send("Recived")
	stop_no = tcpClientA.recv(2048)
	tcpClientA.send("Recived")
	sta_no = tcpClientA.recv(2048)
	tcpClientA.send("Recived")
	print"\n\n"		
	print "Your train details are here"
	print "DEPARTURE DATE :",dat_dep
	print "ARRIVAL DATE :",dat_arriv
	print "STOP No. :",stop_no
	print "STATION NAME :",sta_no	
	return	
	

def quit():
	option = raw_input("Do you want to close this connection(Y/N)")
	if(option == 'Y'):
		print "Thank you for visiting"
	tcpClientA.send("EXIT")
	MESSAGE ="EXIT"
	tcpClientA.close()

while MESSAGE != "EXIT":	
	print "\n"
	print "1.SEE AVAILABLE TRAINS"
	print "2.BOOK A TICKET"
	print "3.CANCEL A TICKET"
	print "4.VIEW YOUR BOOKING DETAILS"
	print "5.VIEW YOUR TRAIN ROUTE DETAILS "
	#print "5.Logout "
	print "6.Quit"
	
	option = raw_input ("Please enter your choice (1-4)")
	#print "option",option
	option = str(option)
	#print "option",option
	
	tcpClientA.send(option) #send the option to the server so that is acts accordingly
	option_recived = tcpClientA.recv(2048)
	if (int(option)==1):	
		see_train()
	if (int(option)==2):
		choose_tickets()
	if (int(option)==3):
		cancel_ticket()
	if (int(option)==4):
		view_details()
	if (int(option)==5):
		route_details()	
	if(int(option)==6):
		quit()
		MESSAGE = "EXIT"
	#tcpClientA.send(option)
	
	#row_count = int(data)
	#print row_count
	
	
tcpClientA.close()

