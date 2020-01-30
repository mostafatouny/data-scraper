import tagIdentifier.tagSequence as tagSequence

# represents one column of data details for traversing
class dataColumn:
    def __init__(self, columnDetailsList):
        self.dataColumnDict = {'name':columnDetailsList[0], 'path':tagSequence.tagSequence(columnDetailsList[1]), 'attributeOfData':columnDetailsList[2]}

    def getColumnName(self):
        return self.dataColumnDict['name']

    def getColumnPath(self):
        return self.dataColumnDict['path']

    def getColumnAttributeOfData(self):
        return self.dataColumnDict['attributeOfData']
