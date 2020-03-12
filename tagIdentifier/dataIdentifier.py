# represents a schema by which a data could be drived from some node
class dataIdentifier:
    def __init__(self, dataDetailsList):
        assert len(dataDetailsList) == 3, "column schema does not contain exactly three arguments"
        self.dataDict = {'name':dataDetailsList[0], 'path':dataDetailsList[1], 'attributeOfData':dataDetailsList[2]}

    def getName(self):
        return self.dataDict['name']

    def getPath(self):
        return self.dataDict['path']

    def getAttributeOfData(self):
        return self.dataDict['attributeOfData']
