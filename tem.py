import parseURLToSoup
import scrapeURLToList
import const

soup = parseURLToSoup.parseURLToSoup(const.mainURL+const.subURL, const.headers)
temLis = scrapeURLToList.scrapeURLToList(soup, const.listNodeSequence, const.columns_paths, 4, [3])
print(temLis)
