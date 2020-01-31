import tagIdentifier.tagIdentity as tagIdentity
import tagIdentifier.tagSequence as tagSequence
import tagIdentifier.tagsPaths as tagsPaths

import parseURL.parseURLToSoup as parseURLToSoup
import scrape.scrapeURLToList as scrapeURLToList
import fileStorage.psql as psql

# red dead redemption 2 on metacritic
#mainURL = "https://www.metacritic.com"
#subURL = "/game/pc/red-dead-redemption-2/user-reviews?page=0"
#listNodeIdentity = tagIdentity.tagIdentity('ol', {"class": "reviews user_reviews"})
#columns_paths = tagsPaths.tagsPaths(
#{
#"name": tagSequence.tagSequence([tagIdentity.tagIdentity('a', {}), tagIdentity.tagIdentity('div', {"class": "name"}), tagIdentity.tagIdentity('div', {"class": "review_critic"}), tagIdentity.tagIdentity('div', {"class": "review_stats"}), tagIdentity.tagIdentity('div', {"class": "review_section"}), tagIdentity.tagIdentity('div', {"class": "review_content"}), tagIdentity.tagIdentity('div', {"class": "review_top review_top_l"}), tagIdentity.tagIdentity('div', {"class": "review_top review_top_r"}), #tagIdentity.tagIdentity('div', {"class": "review_btm review_btm_l"}), tagIdentity.tagIdentity('div', {"class": "review_btm review_btm_r"})]),
#"score": tagSequence.tagSequence([tagIdentity.tagIdentity('div', {}), tagIdentity.tagIdentity('div', {"class": "review_grade"}), tagIdentity.tagIdentity('div', {"class": "review_stats"}), tagIdentity.tagIdentity('div', {"class": "review_section"}), tagIdentity.tagIdentity('div', {"class": "review_content"}), tagIdentity.tagIdentity('div', {"class": "review_top review_top_l"}), tagIdentity.tagIdentity('div', {"class": "review_top review_top_r"}), tagIdentity.tagIdentity('div', #{"class":"review_btm review_btm_l"}), tagIdentity.tagIdentity('div', {"class": "review_btm review_btm_r"})])
#}
#)

# dragon age inquisition weekly sales on vg-charts
#mainURL = "http://www.vgchartz.com"
#subURL = "/game/81792/dragon-age-inquisition/?region=All"

#listNodeSequence = tagSequence.tagSequence([tagIdentity.tagIdentity('table', {}), tagIdentity.tagIdentity('div', {"id":"salesWeekly"}), tagIdentity.tagIdentity('div', {}), tagIdentity.tagIdentity('div', {"id":"right_column"}), tagIdentity.tagIdentity('div', {"class":"row"}), tagIdentity.tagIdentity('div', {"class":"table-cell-desktop"}, 1), tagIdentity.tagIdentity('div', {"class":"table-layout"}), tagIdentity.tagIdentity('div', {"id":"mainContainerSub"}), tagIdentity.tagIdentity('div', {"id":"mainContainer"}), tagIdentity.tagIdentity('div', {"style":"flex: 1; overflow: auto"}), tagIdentity.tagIdentity('body', {"style": "display: flex; height: 100%; flex-direction: column"}), tagIdentity.tagIdentity('html', {})])

#columns_paths = tagsPaths.tagsPaths(
#{
#"totalWeek": tagSequence.tagSequence([tagIdentity.tagIdentity('td', {}, 5)])
#}
#)


# dragon age inquisition search results on vg-charts
headers = {
    'User-Agent' : "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0"
}

mainURL = "http://www.vgchartz.com"
subURL = "/gamedb/games.php?name=dragon+age+inquisition"

listNodeSequence = tagSequence.tagSequence([('table', {}, 0), ('div', {"id":"generalBody"}), ('div', {"id": "generalBodyBox2"}), ('td', {"valign":"top"}), ('tr',), ('table',), ('div', {"id":"mainContainerSub"}), ('div', {"id":"mainContainer"}), ('div', {"style":"flex: 1; overflow: auto"}), ('body', {"style": "display: flex; height: 100%; flex-direction: column"}), ('html',)])

columns_paths = tagsPaths.tagsPaths(
[
('link', [('a',), ('td', {"style":"font-size:12pt;"})], 'href')
]
)

soup = parseURLToSoup.parseURLToSoup(mainURL+subURL, headers)
temLis = scrapeURLToList.scrapeURLToList(soup, listNodeSequence, columns_paths, 4, [3])
print(temLis)

#psql_ob = psql.db("localhost", "postgres", "postgres", "postgres")
#psql_ob.createDBbySchDict({"link": ["varchar", 150]}, "hello_world")
#psql_ob.dictToDB(temLis, "hello_world")
#psql_ob.commit_close_DB()
