"""
Notification Microservice - Telegram Bot Class

@author - Benjamin Wong Wei En, Hao Jun Poon, Belle Lee, Chen Ziyi, Masturah Binte Sulaiman, Low Louis
@team   - G3T4
"""

import json
import requests

class telegram_chatbot():

    def __init__(self, token):
        self.token = token
        self.base = "https://api.telegram.org/bot{}/".format(self.token)

    # SEND NORMAL MESSAGES
    def send_message(self, msg=None, chat_id=None):
        url = self.base + "sendMessage?chat_id={}&text={}".format(chat_id, msg)
        return json.loads(requests.get(url).text)
    
    # SEND MESSAGES WITH THE USERS BEING FORCED TO REPLY TO THE MESSAGE BEING SENT
    def message_reply(self, msg=None, chat_id=None):
        url = self.base + "sendMessage?chat_id={}&text={}&reply_markup=".format(chat_id, msg)
        url += '{"force_reply":true}'
        return json.loads(requests.get(url).text)

    def rate_service(self, question=None, chat_id=None):
        str_options = '["Very Good", "Good", "Neutral", "Bad", "Very Bad"]'
        url = self.base + "sendPoll?chat_id={}&question={}&options={}".format(chat_id,question,str_options)
        return json.loads(requests.get(url).text)
    