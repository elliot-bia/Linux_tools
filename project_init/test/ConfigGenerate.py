
from configparser import ConfigParser
import sys

config = ConfigParser()
config['DEFAULT'] = {'Key': 'Value'}

with open(sys.path[-1] + '/conf/config.ini', 'w',  encoding='utf-8') as configfile:
    config.write(configfile)