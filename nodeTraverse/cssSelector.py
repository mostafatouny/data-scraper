# From a given node reach some node/tag through css selector
def reachNodeByCssSelector(root_in, path):
        # indicates that no further selection is needed
	if path == '':
		return root_in

        # reaches node through beautifulsoup's css selector
	nodeTrav = root_in.select(path)
        # supposedly, only one node is found
	assert len(nodeTrav) == 1, path + " yielded " + str(len(nodeTrav)) + " by css selector"

	return nodeTrav[0]
