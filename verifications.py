def isListEmpty(list_in):
    if (len(list_in) == 0):
        print("list is empty")
        return True
    return False

def isElemNotOfType(elem_in, type_in):
    if not isinstance(elem_in, type_in):
        print("element is not of the desired type")
        return True
    return False

def isListNotOfType(list_in, type_in):
    for elem in list_in:
        if isElemNotOfType(elem, type_in):
            print("list is not all of desired type")
            return True
    return False

def isListNotOfSameType(list_in):
    firstType = type(list_in[0])
    for elem in list_in:
        if firstType != type(elem):
            print("list is not of the same type")
            return True
    return False

def isAllDictListNotSame(list_in):
    if isListEmpty(list_in):
        return True
    if isListNotOfSameType(list_in):
        return True
    if isElemNotOfType(list_in[0], dict):
        return True

    keysOfFirst = list(list_in[0].keys())
    for dic_el in list_in:
        if keysOfFirst != list(dic_el.keys()):
            return True
    return False

def isNone(node):
    if node is None:
        print("None is returned")
        return True
    return False

def isNotDesired():
    print("a value is not wihtin desired ones")
    return True

def isElemNotOneOf(elem_in, listValids_in):
    if not elem_in in listValids_in:
        print("element is not valid given specified valid elements")
        return True
    return False

def isListElemsNotOneOf(listChecked_in, listValids_in):
    for elem in listChecked_in:
        if isElemNotOneOf(elem, listValids_in):
            print("list elements are not within specified valid ones")
            return True

def isListLessThan(list_in, num_in):
    if len(list_in) < num_in:
        print("list length is less than specified number")
        return True
    return False
