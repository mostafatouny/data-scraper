# local-files
import parseURL.parseURLToSoup as parseURLToSoup
import fileStorage.jsonRW as jsonRW
#import fileStorage.psql as psql
import metacritic2019_functions as func

headers = {
    'User-Agent' : "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0"
}

mainURL = "https://www.metacritic.com"
subURL = "/browse/games/score/metascore/year/ps4/filtered?year_selected=2019"

# main list which would accumulate whole data
gamesData = []
# loop on links, and scrape their data, till current page is the last one
while True:
    # append sub directory to main website
    URL = mainURL + subURL
    # request HTTP, then parse HTML
    soup = parseURLToSoup.parseURLToSoup(URL, headers)
    # get data from URL into a list
    gamesDataOfPage = func.scrapeGamesPage(soup)
    # add url's data into whole games data
    gamesData = gamesData + gamesDataOfPage
    # get pages positions
    pagesPositions = func.scrapePagePositions(soup)
    # if current page is the last one, terminate
    if func.isActiveLastPage(pagesPositions):
        break
    # get the index of page next to the current one
    nextPageIndex = func.findPageIndex(pagesPositions, 'active_page') + 1
    # get link of page next to current one in a list
    nextPageLinkList = func.scrapePageLinks(soup, [nextPageIndex])
    # set subURL to page's url
    subURL = nextPageLinkList[0]['pageLink']

# store data into a json file
jsonRW.writeJson(gamesData, "metacritic2019_data")

# storing into a database, alternatively
#psql_ob = psql.db("localhost", "postgres", "postgres", "postgres")
#psql_ob.createDBbySchDict({"link": ["varchar", 150]}, "hello_world")
#psql_ob.dictToDB(temLis, "hello_world")
#psql_ob.commit_close_DB()
