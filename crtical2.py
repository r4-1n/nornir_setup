#Importing the necessary modules
import sys
import threading
import paramiko
import os.path
import time
import sys
import re
import subprocess

##############################################################################################
session = paramiko.SSHClient()     
        #For testing purposes, this allows auto-accepting unknown host keys
        #Do not use in production! The default would be RejectPolicy
session.set_missing_host_key_policy(paramiko.AutoAddPolicy())  
#Connect to the device using username and password          
session.connect("10.88.130.145", username = "cisco", password = "cisco123")
#Start an interactive shell session on the router
connection = session.invoke_shell()	
#for each_line in selected_cmd_file.readlines():
connection.send("sh facility-alarm status" + '\n')
connection.send(" " + '\n')

time.sleep(2)      
#Checking command output for IOS syntax errors
router_output = connection.recv(65535)
finalstr= router_output.decode("utf-8")
dict={}

print (dict)
#critical=re.findall(r"\bCRITICAL",finalstr)

##print(critical)
##print (len(critical))
#acard=re.findall(r"(\d\d/\d\d/\d\d",finalstr)
#slot=re.findall(r".\/d+,acard.decode("utf-8))
#print(acard)
#print(slot)
# to PARSE the file to get the ip parsing.. by re module and re.findall regular expression . 
session.close()
