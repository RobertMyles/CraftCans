#' @importFrom xml2 read_html
#' @importFrom magrittr set_colnames
#' @importFrom rvest html_nodes
#' @importFrom rvest html_table
#' @importFrom dplyr slice
#' @importFrom dplyr select
#' @importFrom dplyr mutate
#' @importFrom tidyr separate
#' @title beer_table
#' @description Returns a dataframe of information on canned beer from \code{CraftCans.com}.
#' @return A dataframe, with the following columns:
#' \itemize{
#' \item{\code{ID: }}{\code{integer}, database entry number for the beer.}
#' \item{\code{Beer: }}{\code{character}, names of the beer, many of them wonderful.}
#' \item{\code{Brewery: }}{\code{character}, name of the brewery.}
#' \item{\code{City: }}{\code{character}, city of the brewery.}
#' \item{\code{State: }}{\code{character}, state where the brewery is.}
#' \item{\code{Style: }}{\code{character}, beer type.}
#' \item{\code{Ounces: }}{\code{numeric}, liquid ounces, volume of the can.}
#' \item{\code{ABV_percent: }}{\code{numeric}, Alcohol By Volume.}
#' \item{\code{IBUs: }}{\code{numeric}, International Bitterness Units. Gauges the isomerized alpha acids from hops in a beer in parts per million.}
#' \item{\code{Litres: }}{\code{numeric}, for the sane among us.}
#' }
#' @usage \code{beer_table()}
#' @seealso \href{http://www.craftcans.com/about.php}{Craft Cans}
#' @export
beer_table <- function(){

  url <- "http://www.craftcans.com/db.php?search=all&sort=beerid&ord=desc&view=text"

  suppressWarnings(
    tb <- xml2::read_html(url)%>%
      rvest::html_nodes(css ="#content > table") %>%
      rvest::html_table(fill = TRUE) %>%
      .[[1]] %>%
      dplyr::slice(-1:-8) %>%
      dplyr::select(1:8) %>%
      magrittr::set_colnames(value = c("ID", "Beer", "Brewery",
                                       "Location", "Style",
                                       "Ounces", "ABV_percent",
                                       "IBUs")) %>%
      dplyr::mutate(ID = gsub("\\.", "", ID),
                    ABV_percent = gsub("%", "", ABV_percent),
                    ABV_percent = as.numeric(ABV_percent),
                    IBUs = gsub("N/A", "NA", IBUs),
                    IBUs = as.numeric(IBUs),
                    Ounces = gsub(" & 16", "", Ounces),
                    Ounces = gsub("[^0-9\\.]*", "", Ounces),
                    Ounces = gsub("\\.$", "", Ounces),
                    Ounces = as.numeric(Ounces),
                    Litres = Ounces*0.0295735
      ) %>%
      tidyr::separate(Location, into = c("City", "State"), sep = ",")
  )

  return(tb)
}
