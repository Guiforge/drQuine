#!/usr/local/bin/python3

# Comment beautifull
def break_line():
    return chr(10)

def main():
    #Beautifull comment
    data="#!/usr/local/bin/python3{bl}{bl}# Comment beautifull{bl}def break_line():{bl}    return chr(10){bl}{bl}def main():{bl}    #Beautifull comment{bl}    data={qt}{data}{qt}{bl}    print(data.format(bl=break_line(), qt=chr(34), data=data)){bl}{bl}main()"
    print(data.format(bl=break_line(), qt=chr(34), data=data))

main()
