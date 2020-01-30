# traverse a sequence of prints given some starting node
def reachNodeBySequence(root_in, path):
    # begin traversing from a given node
    nodeTrav = root_in
    # traverse through the path
    for tagIdentity_ob in path:
        # get tag's name, attributes and index
        tagName = tagIdentity_ob.getName()
        tagAttributes = tagIdentity_ob.getAttributes()
        tagIndex = tagIdentity_ob.getIndex()

        # find all elements which conform to tag's name and attributes
        searchRes = nodeTrav.find_all(tagName, tagAttributes, recursive=False)
        # if none is found, terminate and show parent node and searched node
        assert not len(searchRes) == 0, tagName + " " + str(tagAttributes) + " is not found from " + nodeTrav.name + " " + str(nodeTrav.attrs) + "\n\nparent node content:\n" + str(nodeTrav)

        # tagIndex = -1 indicates no specific index is needed
        # otherwise pick-up element of specified index
        if tagIndex == -1:
            # supposedly, only one element exists in this case
            assert len(searchRes) == 1
            nodeTrav = searchRes[0]
        else:
            # ensure specified index is within range
            assert not tagIndex < 0, "less than zero index is specified"
            assert not len(searchRes) < tagIndex+1, tagName + ", " + str(tagAttributes) + " print could not be reached from " + nodeTrav.name + " " + str(nodeTrav.attrs) + "\n\nparent node content:\n" + str(nodeTrav)
            # traverse to found node
            nodeTrav = searchRes[tagIndex]

    # return traverse result
    return nodeTrav
