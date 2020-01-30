# local files
import parseURL.parseURLToSoup
import fileStorage.psql
import verifications
import other.other
import const

# verifications.isNone shall be replaced anyway
def findActivePageNode(soup_in):
    # a node which entails pages' nodes
    pagesListNode = soup_in.find('ul', {"class" : "pages"})
    if (verifications.isNone(pagesListNode)):
        return

    activePage = pagesListNode.find('li', {"class": "active_page"})
    if (verifications.isNone(activePage)):
        return
    return activePage

def isActiveLastPage(soup_in):
    activePageNode = findActivePageNode(soup_in)
    if "last_page" in activePageNode['class']:
        return True
    return False
    #activeLastPage = pagesListNode.find('li', {"class": "page last_page active_page"})

def getNextPage(soup_in):
    activePageNode = findActivePageNode(soup_in)
    nextToActiveParent = activePageNode.next_sibling
    if (verifications.isNone(nextToActiveParent)):
        return
    # get the node directly a child of it
    #nextToActiveNode = nextToActiveParent.find(True, recursive=False)
    nextToActiveNode = nextToActiveParent.a
    if (verifications.isNone(nextToActiveNode)):
        return
    return nextToActiveNode['href']

reviewsData = []
while True:
    # append sub directory to main website
    URL = mainURL + subURL
    # request HTTP, then parse HTML
    soup = parseURLToSoup(URL, headers)
    # get data from URL into a list
    urlReviewsData = scrapeURLToList.scrapeURLToList(soup, const.listNode, const.columns_paths)
    # add url's data into whole reviews data
    reviewsData = reviewsData + urlReviewsData
    # check whether current URL's page is the last one
    if (isActiveLastPage(soup)):
        break
    # get next URL
    subURL = getNextPage(soup)
