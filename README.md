
<!-- README.md is generated from README.Rmd. Please edit that file -->
CraftCans
=========

`CraftCans` is a tiny R package to get and play with the data from [Craft Cans](http://www.craftcans.com/). It contains, among other things, the quite wonderful `beer_me()` function, which will 'serve' you a random beer from Craft Cans lovely stock. Sláinte!

Installation
------------

``` r

devtools::install_github("RobertMyles/CraftCans")

library(CraftCans)
```

Usage
-----

You can get a complete list of all the canned beers Craft Cans have with `beer_table()`. Since this function downloads and parses data, a faster alternative is `data("beers")`, which returns a dataframe of these canned beers, taken from Craft Cans at the end of May 2017. `beer_table()` will return up-to-date information, however.

I'm working on plotting the cans as images (from [this](http://www.craftcans.com/db.php?cat=cans) page), so that may or may not be done soon. Withering criticisms/lovely suggestions always welcome.
