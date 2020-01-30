import tagIdentifier.dataColumn as dataColumn

# represents a definition schema by which data could be traversed from some starting node
class tagsPaths:
    def __init__(self, columnsPathsList_in):
        # each element of the list represents a column
        self.columnsPathsList = []
        for elem in columnsPathsList_in:
            # name of column, tagSequence, and attribute containing data, respectively
            temDataColmun = dataColumn.dataColumn(elem)
            self.columnsPathsList.append(temDataColmun)

        # set iterator end to last index of list
        self.limit = len(self.columnsPathsList) - 1
        # set iterator start to the first index of list
        self.start = 0
        # initialize counter
        self.counter = self.start

    def __iter__(self):
        return self

    def __next__(self):
        if self.counter > self.limit:
            self.counter = self.start
            raise StopIteration
        value = self.columnsPathsList[self.counter]
        self.counter += 1
        return value

"""
    def getColumnsNum(self):
        return len(self.columnsPathsList)

    def getColumnName(self, index_in):
        return self.columnsPathsList[index_in]['name']

    def getPathByIndex(self, index_in):
        return self.columnsPathsList[index_in]['path']

    def getAttributeOfData(self, index_in):
        return self.columnsPathsList[index_in]['attributeOfData']
"""
