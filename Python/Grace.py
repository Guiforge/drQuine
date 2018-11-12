#!/usr/bin/python3

# Comment
data="#!/usr/bin/python3{brk}{brk}# Comment{brk}data={qt}{data}{qt}{brk}brk=chr(10){brk}text_file = open({qt}Grace_kid.py{qt}, {qt}w{qt}){brk}text_file.write(data.format(brk=brk, qt=chr(34), data=data)){brk}text_file.close()"
brk=chr(10)
text_file = open("Grace_kid.py", "w")
text_file.write(data.format(brk=brk, qt=chr(34), data=data))
text_file.close()