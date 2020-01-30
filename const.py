import tagIdentity
import tagSequence
import tagsPaths

# input to scraper
headers = {
    'User-Agent' : "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0"
}

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
#mainURL = "http://www.vgchartz.com"
#subURL = "/gamedb/games.php?name=dragon+age+inquisition"

#listNodeSequence = tagSequence.tagSequence([tagIdentity.tagIdentity('table', {}, 0), tagIdentity.tagIdentity('div', {"id":"generalBody"}), tagIdentity.tagIdentity('div', {"id": "generalBodyBox2"}), tagIdentity.tagIdentity('td', {"valign":"top"}), tagIdentity.tagIdentity('tr', {}), tagIdentity.tagIdentity('table', {}), tagIdentity.tagIdentity('div', {"id":"mainContainerSub"}), tagIdentity.tagIdentity('div', {"id":"mainContainer"}), tagIdentity.tagIdentity('div', {"style":"flex: 1; overflow: auto"}), tagIdentity.tagIdentity('body', {"style": "display: flex; height: 100%; flex-direction: column"}), tagIdentity.tagIdentity('html', {})])

#columns_paths = tagsPaths.tagsPaths(
#[
#('link', tagSequence.tagSequence([tagIdentity.tagIdentity('a', {}), tagIdentity.tagIdentity('td', {"style":"font-size:12pt;"})]), 'href')
#]
#)
