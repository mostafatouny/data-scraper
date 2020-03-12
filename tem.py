"""
import parseURL.parseURLToSoup as parseURLToSoup
import nodeTraverse.cssSelector as travByCssSel
import scrape.nodeByPaths as scrapeNodeByPaths
import tagIdentifier.dataIdentifier as dataIdentifier

headers = {
    'User-Agent' : "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0"
}
mainURL = "https://www.metacritic.com"
subURL = "/browse/games/score/metascore/year/pc/all?year_selected=2019"
URL = mainURL + subURL

soup = parseURLToSoup.parseURLToSoup(URL, headers)
node = travByCssSel.reachNodeByCssSelector(soup, 'li.game_product:nth-child(5)')
iden = dataIdentifier.dataIdentifier(['link', 'div:nth-child(1) > div:nth-child(1) > a:nth-child(1)', 'href'])
r = scrapeNodeByPaths.scrapeNodeByPaths(node, [iden])
print(r)
"""

"""
import scrape.scrapeList as scrapeList
import parseURL.parseURLToSoup as parseURLToSoup
import nodeTraverse.cssSelector as travByCssSel
import scrape.scrapeList as scrapeList
import tagIdentifier.dataIdentifier as dataIdentifier
headers = {
    'User-Agent' : "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0"
}
mainURL = "https://www.metacritic.com"
subURL = "/browse/games/score/metascore/year/pc/all?year_selected=2019"
URL = mainURL + subURL
soup = parseURLToSoup.parseURLToSoup(URL, headers)
iden = dataIdentifier.dataIdentifier(['link', 'div:nth-child(1) > div:nth-child(1) > a:nth-child(1)', 'href'])
r = scrapeList.scrapeList(soup, '.list_product_condensed', [iden])
print(r)
"""

"""
import parseURL.parseURLToSoup as parseURLToSoup
import nodeTraverse.cssSelector as travByCssSel
import scrape.nodeByPaths as scrapeNodeByPaths
import tagIdentifier.dataPathsList as dataPathsList

headers = {
    'User-Agent' : "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0"
}
mainURL = "https://www.metacritic.com"
subURL = "/game/playstation-4/no-mans-sky-beyond"
URL = mainURL + subURL

soup = parseURLToSoup.parseURLToSoup(URL, headers)
node = travByCssSel.reachNodeByCssSelector(soup, 'div.product_split:nth-child(1) > div:nth-child(1)')
paths = dataPathsList.dataPathsList([
    ('name', 'div.product_title > a:nth-child(1) > h1:nth-child(1)', -1),
    ('publisher', '.publisher > span:nth-child(2) > a:nth-child(1)', -1),
    ('developer', '.developer > span:nth-child(2)', -1),
    ('release_data', '.release_data > span:nth-child(2)', -1),
    ('critic_rating', '.xlarge > span:nth-child(2)', -1),
    ('users_rating', 'div.large:nth-child(1)', -1)
])
r = scrapeNodeByPaths.scrapeNodeByPaths(node, paths)
print(r)

import scrape.scrapeList as scrapeList
paths = dataPathsList.dataPathsList([
    ('genre', '', -1)
])
r = scrapeList.scrapeList(node, '.product_genre', paths)
print(r)
"""
