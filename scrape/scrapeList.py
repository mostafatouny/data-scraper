# local files
import nodeTraverse.cssSelector as traverseByCss
import scrape.nodeByPaths as scrapeNodeByPaths

# soup_in is a beautiful4 soup object
# elemsListPath_in is the path of the node containing list of elements which are supposed to be scrapped
# dataPaths_in is a list whose elements represet a schema by which data gets derived
# limit_in and specificIndex_in are optional in case limited elements or specific indices are needed
def scrapeList(soup_in, elemsListPath_in, dataPaths_in, limit_in = -1, specificIndex_in=[-1]):
    # list which contains scraped data from URL
    scrapedData = []

    # node which entails a list of elems nodes
    elemsListNode = traverseByCss.reachNodeByCssSelector(soup_in, elemsListPath_in)

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
        # scrape each by paths/schema defined in dataPaths_in
        dataElemDict = scrapeNodeByPaths.scrapeNodeByPaths(elemNode, dataPaths_in)
        # append current element's data into whole elements data list
        scrapedData.append(dataElemDict)

    # return all scraped data list
    return scrapedData
