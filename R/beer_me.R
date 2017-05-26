#' @export
beer_me <- function(number = 1){
  beers <- beer_table()
  beers <- beers[sample(nrow(beers), number), ]
  return(beers)
}

# #' @export
# beer_plot <- function(number = 1){
#   beers <- beer_me() %>%
#     ggplot2::ggplot() #...need images
#   http://craftcans.com/db.php?cat=cans
#
# }
