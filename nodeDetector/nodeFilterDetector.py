
# check if a tag's string, i.e text inside tag, is available within whole root's tree
def notElemExis(root_in, elemStr_in):
    elemRes = root_in.find(string=elemStr_in)
    if not elemRes is None:
        return True
    return False

# checks whether other elements are available in root's tree
# it does not obtain paths, and computationally less costly
def areElemsFound(root_in, elemSet):
    for elem in elemSet:
        if not notElemExis(root_in, elem):
            return False
    return True

# gets elements paths within root's tree. if
# element at least one element does not exist, return None
def getElemsPaths(root_in, elemSet_in):
    # 2d list where each element of it represents
    # some elemSet_in's element path
    elemsPaths = []
    for elemStr in elemSet_in:
        temList = []

        travNode = root_in.find(string=elemStr)
        if travNode is None:
            return None

        # take a step upward to the tag containing the string, so
        # its print could be saved
        travNode = travNode.parent
        # keep traversing up till returning to root
        while not travNode is root_in:
            # get a print of the tag
            tag_name_attrs = [travNode.name, travNode.attrs]
            # save print into a list
            temList.append(tag_name_attrs)
            travNode = travNode.parent

        # after reaching root, path is found, so
        # we add to our list of paths
        elemsPaths.append(temList)

    return elemsPaths

# check if all sets of elements are in soup's tree
def areElemsSetsFound(root_in, list_in):
    for elemSet in list_in:
        if not areElemsFound(root_in, elemSet):
            return False
    return True

def searchElemsTravUp(node_in, elemsStr_in):
    # keep traversing upwards till you find a node which
    # reaches other texts of user's elemsStr_in, in that case,
    # floor of nodetemListList of user's list is found
    while True:
        # if there is no parent, then head of the soup is reached
        # without finding others texts of the user's list
        if node_in.parent is None:
            return None

        # take a step upward to get the tag containing string
        node_in = node_in.parent

        pathsList = getElemsPaths(node_in, elemsStr_in)
        # if paths are found, i.e did not return None, then
        # other elements do exist
        if pathsList:
            assert pathsList, "other elements are found while sequence is empty"
            return (node_in, pathsList)

    return None

def searchElemSetsTravUp(node_in, otherElemsSetsStr_in):
    # sequence of tag's prints like name and attributes to reach a tag from some node
    sequenceOfTags = []

    # keep traversing upwards till you find a node which
    # reaches other texts of user's list_in, in that case,
    # floor of nodeList of user's list is found
    while True:
        # if there is no parent, then head of the soup is reached
        # without finding others texts of the user's list
        if node_in.parent is None:
            return None

        # a print of both tag's name and attributes dictionary
        tag_name_attrs = [node_in.name, node_in.attrs]
        # push tag's print
        sequenceOfTags.append(tag_name_attrs)
        # take a step upward
        node_in = node_in.parent

        # if other's user's list is found, then the desired
        # nodeList floor is found
        if areElemsSetsFound(node_in, otherElemsSetsStr_in):
            return (node_in, sequenceOfTags)

# given a soup's head, or parent node,
# detect node which contains all user's list texts,
# and paths for each data group
def nodeFilterDetector(soup_in, list_in):
    assert not soup_in is None, "soup given to nodeFilterDetector is None"
    assert isinstance(list_in, list), "list given to nodeFilterDetector is not of type list"

    # first set of data, i.e group of data for one entity
    firstSet = list_in[0]
    # other sets of entities
    otherSets = list_in[1:]
    # a string of first set's first element
    firstElem_firstSet_str = firstSet[0]

    # find all instances of the string in the whole soup
    firstElem_firstSet_str_resLis = soup_in.find_all(string=firstElem_firstSet_str)
    # loop on each string instance then instantiate a search
    for elemStr in firstElem_firstSet_str_resLis:
        # get a tuple of node containing all entity's data,
        # and paths for each data group
        #   parent of string is the tag containing it
        node_paths_elem = searchElemsTravUp(elemStr.parent, firstSet)
        if node_paths_elem:
            # get a tuple of node containing all entities,
            # and a sequence from it up to entity's node
            node_sequence_elemSet = searchElemSetsTravUp(node_paths_elem[0], otherSets)
            if node_sequence_elemSet:
                goalNode = node_sequence_elemSet[0]
                sequenceOfTags = (node_paths_elem[1], node_sequence_elemSet[1])
                # return both the goal node which contains all user's texts,
                # and tuple of paths and sequence, respectively
                return (goalNode, sequenceOfTags)

    # remove first and last print, as they correspond to
    # element-specific tag and review-specific tag
    #sequenceOfTags = sequenceOfTags[1:-1]

    return None
