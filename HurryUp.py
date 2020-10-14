#! /usr/bin/env python
import os
    
          #Updated pip to latest
os.system('python3 -m pip install --upgrade pip')
          #Get dat ipy :)
os.system('python3 -m pip install ipython tree')
'''Setup Nornir Inventory(Defaults,Hosts,Groups)
and Config.yml'''
os.system('touch config.yml defaults.yml hosts.yml groups.yml && mkdir inventory && mv defaults.yml hosts.yml groups.yml inventory/')
print(3 * f'lets go.\n')