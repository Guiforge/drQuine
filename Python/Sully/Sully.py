#!/usr/bin/python3

import os

NUMBER=5
data="#!/usr/bin/python3{brk}{brk}import os{brk}{brk}NUMBER={nb}{brk}data={qt}{data}{qt}{brk}if (__file__.find({qt}_{qt}, 0, len(__file__)) > 0):{brk}    NUMBER -= 1{brk}if NUMBER >= 0:{brk}    text_file = open({qt}Sully_{fbr}{lbr}.py{qt}.format(NUMBER), {qt}w{qt}){brk}    text_file.write(data.format(brk=chr(10), qt=chr(34), data=data, nb=NUMBER, fbr=chr(123), lbr=chr(125))){brk}    text_file.close(){brk}    if NUMBER > 0:{brk}        os.system({qt}/usr/bin/python3 Sully_{fbr}{lbr}.py{qt}.format(NUMBER))"
if (__file__.find("_", 0, len(__file__)) > 0):
    NUMBER -= 1
if NUMBER >= 0:
    text_file = open("Sully_{}.py".format(NUMBER), "w")
    text_file.write(data.format(brk=chr(10), qt=chr(34), data=data, nb=NUMBER, fbr=chr(123), lbr=chr(125)))
    text_file.close()
    if NUMBER > 0:
        os.system("/usr/bin/python3 Sully_{}.py".format(NUMBER))