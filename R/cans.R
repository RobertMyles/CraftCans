
# scrape cans from this page

# an idea: library(rvest)

# pg <- html("http://www.theplantlist.org/tpl/record/kew-422570")
# pg %>% html_nodes("td > img") %>% html_attr("src")

# http://www.craftcans.com/db.php?cat=cans

library(rvest)
url <- "http://www.craftcans.com/db.php?cat=cans"
pg <- read_html(url) %>% html_nodes("td > img") %>% html_attr("src")
