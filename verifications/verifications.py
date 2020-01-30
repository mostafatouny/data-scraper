def isAllDictListSame(list_in):
    keysOfFirst = list(list_in[0].keys())
    for dic_el in list_in:
        if keysOfFirst != list(dic_el.keys()):
            return False
    return True
