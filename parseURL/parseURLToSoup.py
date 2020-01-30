# 3rd-party libraries
import requests
from bs4 import BeautifulSoup

def parseURLToSoup(URL_in, headers_in):
    # HTTP request
    r = requests.get(URL_in, headers = headers_in)
    # parsing html
    soup = BeautifulSoup(r.text, features='lxml')

    return soup
