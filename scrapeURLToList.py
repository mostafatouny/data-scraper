# local files
import traverseNodes

# soup_in is a soup object
# elemsListPath is a tagSequence which reaches the node containing list of elements
# data_ColumnsPaths is a list whose elements represet a column's meta-data
# limit_in and specificIndex_in are optional in case limited elements or specific indices are needed
def scrapeURLToList(soup_in, elemsListPath, data_ColumnsPaths, limit_in = -1, specificIndex_in=[-1]):
    # list which contains scraped data from URL
    scrapedData = []

    # node which entails a list of elems nodes
    elemsListNode = traverseNodes.reachNodeBySequence(soup_in, elemsListPath)

    # limit_in = -1 indicates that no limit is signaled, otherwise limit by specified amount
    if limit_in == -1:
        elemsList = elemsListNode.find_all(True, recursive=False)
    else:
        assert limit_in >= 0, "number of specified elements of a list is less that zero"
        elemsList = elemsListNode.find_all(True, recursive=False, limit = limit_in)

    # specificIndex_in = [-1] indicates parse data from all elements, otherwise filter specific indices
    if specificIndex_in[0] != -1:
        temLis = []
        for ind in specificIndex_in:
            assert ind > -1, "index of some element is negative"
            assert ind < len(elemsList), "index is out of elements range"
            # add only elements whose indices are specified in specificIndex_in
            temLis.append(elemsList[ind])
        elemsList = temLis

    # iterate through nodes of elems
    for elemNode in elemsList:

        # a temporary list which represents a sole element
        temElem = {}

        # iterate through each column
        for index_num in range(data_ColumnsPaths.getColumnsNum()):
            # initialize traverser on an element
            nodeTrav = elemNode
            # traverse by the sequence of tagsIdentities
            dataInstanceNode = traverseNodes.reachNodeBySequence(nodeTrav, data_ColumnsPaths.getPathByIndex(index_num))

            # get the attribute in which data is contained
            # if -1 is returned, then it indicates data is not within an attribute but in tag's text
            dataType = data_ColumnsPaths.getAttributeOfData(index_num)
            if dataType != -1:
                assert dataType in dataInstanceNode.attrs, "attribute of data is not in reached node"
                concreteData = dataInstanceNode[dataType]
            else:
                concreteData = dataInstanceNode.get_text()

            # assign concrete data to its proper column name
            temElem[data_ColumnsPaths.getColumnName(index_num)] = concreteData

        # append scraped elem data into whole data's list
        scrapedData.append(temElem)

    # return scraped data lsit
    return scrapedData
