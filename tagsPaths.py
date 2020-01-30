import tagSequence

class tagsPaths:
    def __init__(self, columnsPathsList_in):
        self.columnsPathsList = []
        for elem in columnsPathsList_in:
            temDict = {'name':elem[0], 'path':elem[1], 'attributeOfData':elem[2]}
            self.columnsPathsList.append(temDict)

    def getColumnsNum(self):
        return len(self.columnsPathsList)

    def getColumnName(self, index_in):
        return self.columnsPathsList[index_in]['name']

    def getPathByIndex(self, index_in):
        return self.columnsPathsList[index_in]['path']

    def getAttributeOfData(self, index_in):
        return self.columnsPathsList[index_in]['attributeOfData']
