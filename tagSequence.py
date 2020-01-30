import tagIdentity

class tagSequence:
    def __init__(self, tagIdentityList_in):
        self.tagIdentityList = tagIdentityList_in

    def isSequenceNotEmpty(self):
        if len(self.tagIdentityList) > 0:
            return True
        return False

    def popTagIdentity(self):
        return self.tagIdentityList.pop()
