import copy

# traverse a sequence of prints given some starting node
def reachNodeBySequence(root_in, path):
    tagSequence = copy.deepcopy(path)
    # begin traversing from the given root
    nodeTrav = root_in
    # keep traversing while the list of sequences is not empty
    while tagSequence.isSequenceNotEmpty():
        # pop, get the last pushed print and remove it from the list
        tagIdentity = tagSequence.popTagIdentity()
        tagName = tagIdentity.getName()
        tagAttributes = tagIdentity.getAttributes()
        tagIndex = tagIdentity.getIndex()

        # use the print to traverse the next node, as (tag name, tag attrs)
        searchRes = nodeTrav.find_all(tagName, tagAttributes, recursive=False)
        assert not len(searchRes) == 0, tagName + " " + str(tagAttributes) + " is not found from " + nodeTrav.name + " " + str(nodeTrav.attrs) + "\n\nparent node content:\n" + str(nodeTrav)

        if tagIndex == -1:
            nodeTrav = searchRes[0]
        else:
            assert not tagIndex < 0, "less than zero index is specified"
            assert not len(searchRes) < tagIndex+1, tagName + ", " + str(tagAttributes) + " print could not be reached from " + nodeTrav.name + " " + str(nodeTrav.attrs) + "\n\nparent node content:\n" + str(nodeTrav)
            nodeTrav = searchRes[tagIndex]

    return nodeTrav
