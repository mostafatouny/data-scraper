import tagIdentifier.tagIdentity as tagIdentity

# represents a sequence of tags' identity
class tagSequence:
    def __init__(self, tagIdentityList_in):
        self.tagIdentityList = []
        for elem in tagIdentityList_in:
            if len(elem) == 1:
                temTagIdentity = tagIdentity.tagIdentity(elem[0])
            elif len(elem) == 2:
                temTagIdentity = tagIdentity.tagIdentity(elem[0], elem[1])
            elif len(elem) == 3:
                temTagIdentity = tagIdentity.tagIdentity(elem[0], elem[1], elem[2])
            self.tagIdentityList.append(temTagIdentity)

        # set starting iterator index as the end of list
        self.start = len(self.tagIdentityList) - 1
        # set least iterator index of list as the beginning of list
        self.limit = 0
        # counter is initialized
        self.counter = self.start

    def __iter__(self):
        return self

    def __next__(self):
        if self.counter < self.limit:
            self.counter = self.start
            raise StopIteration
        value = self.tagIdentityList[self.counter]
        self.counter -= 1
        return value
