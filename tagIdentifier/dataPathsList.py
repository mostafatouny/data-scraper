import tagIdentifier.dataIdentifier as dataIdentifier

# represents a definition schema by which data could be traversed from some starting node
class dataPathsList:
    def __init__(self, pathsList_in):
        # each element of the list represents a column
        self.pathsList = []
        for elem in pathsList_in:
            # name of column, tagSequence, and attribute containing data, respectively
            temDataPath = dataIdentifier.dataIdentifier(elem)
            self.pathsList.append(temDataPath)

        # set iterator end to last index of list
        self.limit = len(self.pathsList) - 1
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
        value = self.pathsList[self.counter]
        self.counter += 1
        return value
