"""
CRM Microservice Data Models
@Author - Benjamin Wong Wei En, Hao Jun Poon, Belle Lee, Chen Ziyi, Masturah Binte Sulaiman
@Team   - G3T4
"""
from .base import db

class User(db.Model):
    username  = db.Column(db.String(80), primary_key=True, autoincrement=True)
    user_type = db.Column(db.String(80), nullable=False)
    chat_id   = db.Column(db.String(80), nullable=True )
    
    def __init__(self,username,user_type,chat_id = None):
        self.username     = username
        self.user_type    = user_type
        self.chat_id      = chat_id
        self.vendor_image = vendor_image
        
    def directory(self):
        return [
            ("username"  , self.username),
            ("user_type" , self.user_type),
            ("chat_id"   , self.chat_id),         
        ]
    
    def json(self,*args):
        output = []
        values = self.directory()
        for key in args:
            output.append(values[key])
        return dict(output)