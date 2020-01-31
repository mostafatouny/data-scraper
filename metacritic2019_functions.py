import tagIdentifier.tagSequence as tagSequence
import tagIdentifier.tagsPaths as tagsPaths
import scrape.scrapeURLToList as scrapeURLToList

def scrapeGamesPage(soup_in):
    listNodeSequence = tagSequence.tagSequence([('ol', {"class":"list_products list_product_condensed"}), ('div', {"class":"product_condensed"}), ('div', {"class": "body_wrap"}), ('div', {"class":"body"}), ('div', {"class":"module products_module list_product_condensed_module"}), ('div', {"class":"module filter score_filter"}), ('div', {"id":"main", "class":"col main_col"}), ('div', {"id":"gutters", "class":"site_gutters"}), ('div', {"class":"layout"}), ('div', {"id": "main_content", "class": "content_section mpu_layout"}), ('div', {"id":"col_layout", "class":"col_layout"}), ('div', {"id":"container"}), ('div', {"id":"gutters_top", "class":"site_gutters"}), ('div', {"id":"gutters_btm", "class":"site_gutters"}), ('div', {"id":"gutters_mid", "class":"site_gutters"}), ('div', {"id":"gutters", "class":"site_gutters"}), ('div', {"id":"site_layout"}), ('body', {"class":"skybox-auto-collapse"}), ('html', )])
    columns_paths = tagsPaths.tagsPaths(
    [
    ('title', [('a',), ('div', {"class":"basic_stat product_title"}), ('div', {"class":"product_wrap"})], -1),
    ('critic_rating', [('div',), ('div', {"class":"product_score"}), ('div', {"class":"product_wrap"})], -1),
    ('user_rating', [('span', {"class":"textscore"}), ('li', {"class":"product_avguserscore"}), ('ul',), ('div', {"class":"condensed_stats"}), ('div', {"class":"product_wrap"})], -1),
    ('release_date', [('span', {"class":"data"}), ('li', {"class":"release_date"}), ('ul',), ('div', {"class":"condensed_stats"}), ('div', {"class":"product_wrap"})], -1)
    ]
    )
    return scrapeURLToList.scrapeURLToList(soup_in, listNodeSequence, columns_paths)

def scrapePagePositions(soup_in):
    listNodeSequence = tagSequence.tagSequence([('ul', {"class":"pages"}), ('div', {"class":"pages"}), ('div', {"class":"page_nav_wrap"}), ('div', {"class":"page_nav"}), ('div', {"class":"module filter score_filter"}), ('div', {"id":"main", "class":"col main_col"}), ('div', {"id":"gutters", "class":"site_gutters"}), ('div', {"class":"layout"}), ('div', {"id": "main_content", "class": "content_section mpu_layout"}), ('div', {"id":"col_layout", "class":"col_layout"}), ('div', {"id":"container"}), ('div', {"id":"gutters_top", "class":"site_gutters"}), ('div', {"id":"gutters_btm", "class":"site_gutters"}), ('div', {"id":"gutters_mid", "class":"site_gutters"}), ('div', {"id":"gutters", "class":"site_gutters"}), ('div', {"id":"site_layout"}), ('body', {"class":"skybox-auto-collapse"}), ('html', )])
    columns_paths = tagsPaths.tagsPaths(
    [
    ('pagePosition', [], 'class'),
    ]
    )
    return scrapeURLToList.scrapeURLToList(soup_in, listNodeSequence, columns_paths)

def scrapePageLinks(soup_in, indicesList):
    listNodeSequence = tagSequence.tagSequence([('ul', {"class":"pages"}), ('div', {"class":"pages"}), ('div', {"class":"page_nav_wrap"}), ('div', {"class":"page_nav"}), ('div', {"class":"module filter score_filter"}), ('div', {"id":"main", "class":"col main_col"}), ('div', {"id":"gutters", "class":"site_gutters"}), ('div', {"class":"layout"}), ('div', {"id": "main_content", "class": "content_section mpu_layout"}), ('div', {"id":"col_layout", "class":"col_layout"}), ('div', {"id":"container"}), ('div', {"id":"gutters_top", "class":"site_gutters"}), ('div', {"id":"gutters_btm", "class":"site_gutters"}), ('div', {"id":"gutters_mid", "class":"site_gutters"}), ('div', {"id":"gutters", "class":"site_gutters"}), ('div', {"id":"site_layout"}), ('body', {"class":"skybox-auto-collapse"}), ('html', )])
    columns_paths = tagsPaths.tagsPaths(
    [
    ('pageLink', [('a',)], 'href'),
    ]
    )
    return scrapeURLToList.scrapeURLToList(soup_in, listNodeSequence, columns_paths, -1, indicesList)

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
