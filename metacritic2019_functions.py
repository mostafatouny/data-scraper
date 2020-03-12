import tagIdentifier.dataPathsList as dataPathsList
import scrape.scrapeList as scrapeList
import scrape.nodeByPaths as scrapeNodeByPaths
import nodeTraverse.cssSelector as travByCssSel

def scrapeGamesPage(soup_in):
    listNodeSequence = '.list_product_condensed'
    data_paths = dataPathsList.dataPathsList([
        ('link', 'div:nth-child(1) > div:nth-child(1) > a:nth-child(1)', 'href')
    ])
    return scrapeList.scrapeList(soup_in, listNodeSequence, data_paths)

def scrapeGamesDetailPage(soup_in):
    listNode = travByCssSel.reachNodeByCssSelector(soup_in, 'div.product_split:nth-child(1) > div:nth-child(1)')
    data_paths = dataPathsList.dataPathsList([
        ('name', 'div.product_title > a:nth-child(1) > h1:nth-child(1)', -1),
        ('publisher', '.publisher > span:nth-child(2) > a:nth-child(1)', -1),
        ('developer', '.developer > span:nth-child(2)', -1),
        ('release_data', '.release_data > span:nth-child(2)', -1),
        ('critic_rating', '.xlarge > span:nth-child(2)', -1),
        ('users_rating', 'div.large:nth-child(1)', -1)
    ])
    temElem = scrapeNodeByPaths.scrapeNodeByPaths(listNode, data_paths)

    data_paths = dataPathsList.dataPathsList([
    ('genre', '', -1)
    ])
    genreDictList = scrapeList.scrapeList(soup_in, '.product_genre', data_paths)

    # remove first element --the title
    genreDictList = genreDictList[1:]
    # get links from dictionaries into a list
    genreList = []
    for el in genreDictList:
        genreList.append(el['genre'])

    # add genres list into the element
    temElem['genres'] = genreList

    return temElem

def scrapePagePositions(soup_in):
    listNodeSequence = 'ul.pages'
    data_paths = dataPathsList.dataPathsList([
        ('pagePosition', '', 'class'), #empty string is hardcoded by me, not a css selector method
    ])
    return scrapeList.scrapeList(soup_in, listNodeSequence, data_paths)

def scrapePageLinks(soup_in, indicesList_in):
    listNodeSequence = 'ul.pages'
    data_paths = dataPathsList.dataPathsList([
        ('pageLink', 'a:nth-child(1)', 'href'),
    ])
    return scrapeList.scrapeList(soup_in, listNodeSequence, data_paths, -1, indicesList_in)

def findPageIndex(pagesPositions_in, keyword_in):
    for page in pagesPositions_in:
        if keyword_in in page['pagePosition']:
            return pagesPositions_in.index(page)

def isActiveLastPage(pagesPositions_in):
    currentPageIndex = findPageIndex(pagesPositions_in, 'active_page')
    lastPageIndex = findPageIndex(pagesPositions_in, 'last_page')
    if currentPageIndex == lastPageIndex:
        return True
    return False
