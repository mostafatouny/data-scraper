class tagIdentity:
    def __init__(self, name_in, attributes_in={}, index_in=-1):
        self.name = name_in
        self.attributes = attributes_in
        self.index = index_in

    def getName(self):
        return self.name

    def getAttributes(self):
        return self.attributes

    def getIndex(self):
        return self.index
