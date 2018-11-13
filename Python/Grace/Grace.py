#!/usr/local/bin/python3
import sys

# Comment
data="#!/usr/local/bin/python3{brk}import sys{brk}{brk}# Comment{brk}data={qt}{data}{qt}{brk}brk=chr(10){brk}try:{brk}	text_file = open({qt}Grace_kid.py{qt}, {qt}w{qt}){brk}	text_file.write(data.format(brk=brk, qt=chr(34), data=data, fbr=chr(123), lbr=chr(125))){brk}	text_file.close(){brk}except IOError as e:{brk}	print({qt}I/O error({fbr}0{lbr}): {fbr}1{lbr}{qt}.format(e.errno, e.strerror)){brk}except ValueError:{brk}	print({qt}Could not convert data to an integer.{qt}){brk}except:{brk}	print({qt}Unexpected error:{qt}, sys.exc_info()[0]){brk}	raise"
brk=chr(10)
try:
	text_file = open("Grace_kid.py", "w")
	text_file.write(data.format(brk=brk, qt=chr(34), data=data, fbr=chr(123), lbr=chr(125)))
	text_file.close()
except IOError as e:
	print("I/O error({0}): {1}".format(e.errno, e.strerror))
except ValueError:
	print("Could not convert data to an integer.")
except:
	print("Unexpected error:", sys.exc_info()[0])
	raise