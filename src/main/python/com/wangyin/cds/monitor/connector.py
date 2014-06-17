# -*- coding: utf-8 -*-
__author__ = 'David Chan'

import ConfigParser
from mysql import connector
from mysql.connector import Error
from mysql.connector import errorcode


class ClusterConnector:
    def __init__(self):
        self.config = ConfigParser.ConfigParser()
        self.config.read('cds.cfg')

    def new_backingstore_conn(self):
        try:
            h = self.config.get('backingstore','host')
            p = self.config.getint('backingstore','port')
            s = self.config.get('backingstore','db')
            u = self.config.get('backingstore','user')
            k = self.config.get('backingstore','pwd')
            cnx = connector.connect(user=u,password=k,host=h,database=s,port=p)
            return cnx
        except Error as err:
            print(err)
        return None

    def new_group_conn(self,host,port,db):
        try:
            user_name = self.config.get('group','user')
            password = self.config.get('group','pwd')
            cnx = connector.connect(user=user_name,password=password, host=host,port=port,database=db)
            return cnx
        except Error as e:
            print(e)
        return None
