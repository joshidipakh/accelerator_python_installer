#!python3

import os
import json
class readJsonFileClass:
    def __init__(self):
        pass

    def readJson(self):
        with open("dataFiles\\DataList.json") as json_file:
            data = json.load(json_file)
            return data["SoftwareList"]
            #for list in data["SoftwareList"]:
             #   print(list)