#' @importFrom xml2 read_html


#beer_table <- function()
#url <- "http://www.craftcans.com/db.php?search=all&sort=beerid&ord=desc&view=text"
url <- "http://www.craftcans.com/db.php"

params <- "?search=all&sort=beerid&ord=desc&view=text"

x <- httr::GET(paste0(url, params))

#xx <-
#httr::content(x, "parsed")

tbb <- xml2::read_html(url)%>%
  rvest::html_nodes(css ="#content > table") %>%
  rvest::html_table(fill = TRUE)
tb <- tbb[[1]]

selector <- "#content > table > tbody > tr:nth-child(3) > td > table:nth-child(4)"
Xpath <- '//*[@id="content"]/table/tbody/tr[3]/td/table[2]'
tab <- xml2::read_html(url)
xml2::xml_children(tab)
xml2::xml_n
tabb <- xml2::xml_find_all(tab, "td")

  rvest::html_nodes(tab, xpath = Xpath)
