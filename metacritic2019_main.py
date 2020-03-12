# local-files
import parseURL.parseURLToSoup as parseURLToSoup
import fileStorage.jsonRW as jsonRW
#import fileStorage.psql as psql
import metacritic2019_functions as func
import other.randomSleep as randSleep

# random-based sleeper, i.e thread pause. It aims to reduce number of requests on a period of time
randSleep_obj = randSleep.randSleep(3, 5, 12, 15)

headers = {
    'User-Agent' : "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0"
}

mainURL = "https://www.metacritic.com"


# Scrape Games Links
##################

subURL = "/browse/games/score/metascore/year/ps4/all?year_selected=2019"

# main list which would accumulate whole games links
gamesLinks = []

# loop on pages, scrape their data till current page is the last one
while True:
    # append page's sub directory to main website
    URL = mainURL + subURL
    # request HTTP, then parse HTML
    soup = parseURLToSoup.parseURLToSoup(URL, headers)
    # get games links from current page's URL into a list
    gamesLinksOfPage = func.scrapeGamesPage(soup)
    # add links of current page into whole links list of all pages
    gamesLinks = gamesLinks + gamesLinksOfPage
    # get pages positions
    pagesPositions = func.scrapePagePositions(soup)
    # if current page is the last one, terminate
    if func.isActiveLastPage(pagesPositions):
        break
    # get the index of page next to the current one
    nextPageIndex = func.findPageIndex(pagesPositions, 'active_page') + 1
    print(nextPageIndex)
    # get link of page next to current one in a list
    nextPageLinkList = func.scrapePageLinks(soup, [nextPageIndex])
    # set subURL to page's url
    subURL = nextPageLinkList[0]['pageLink']
    # print for debugging purposes
    print(gamesLinks)
    # randomly, pause processing in between requests
    randSleep_obj.fireRandomSleep()


# Scrape Game's Data Details, For Each Obtained Game Link
##################

# main list which would accumulate whole games data details
gamesDetailData = []

# for each obtained link, scrape game's details data
for game in gamesLinks:
    # set subURL to game's link
    subURL = game['link']
    # append game's link to main website's link
    URL = mainURL + subURL
    # for the game's link, request HTTML and parse it
    soup = parseURLToSoup.parseURLToSoup(URL, headers)
    # scrape game's details from the game's link
    gamesDetailDataOfPage = func.scrapeGamesDetailPage(soup)
    # append game's details data into whole list of all games data
    gamesDetailData.append(gamesDetailDataOfPage)
    # print for debugging purposes
    print(gamesDetailData[len(gamesDetailData)-1])
    # randomly, pause in between requests
    randSleep_obj.fireRandomSleep()

# Store Data
##################

# save data into a json file
jsonRW.writeJson(gamesDetailData, "metacritic2019_data")

# needs update:
# storing into a database, alternatively
#psql_ob = psql.db("localhost", "postgres", "postgres", "postgres")
#psql_ob.createDBbySchDict({"link": ["varchar", 150]}, "hello_world")
#psql_ob.dictToDB(temLis, "hello_world")
#psql_ob.commit_close_DB()
