# local-files
import nodeTraverse.cssSelector as traverseByCss

# given a node, scrape data derived from it through paths_in schema
def scrapeNodeByPaths(root_in, paths_in):
        # a temporary dictionary which represents a sole data element
        temElem = {}

        # iterate through each path
        for pathEl in paths_in:
            # initialize traverser on given node
            nodeTrav = root_in
            # traverse by CSS selector, as specified in the path
            dataInstanceNode = traverseByCss.reachNodeByCssSelector(nodeTrav, pathEl.getPath())

            # get the attribute in which data is contained
            #    if -1 is returned, then it indicates data is not within an attribute but in tag's text
            dataType = pathEl.getAttributeOfData()
            if dataType != -1:
                assert dataType in dataInstanceNode.attrs, "attribute of data is not in reached node"
                concreteData = dataInstanceNode[dataType]
            else:
                concreteData = dataInstanceNode.get_text()

            # assign concrete data to its proper key name in the temporary dictionary
            temElem[pathEl.getName()] = concreteData

        return temElem
