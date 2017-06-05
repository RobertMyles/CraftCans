
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

``` r
data("beers") %>% head()
#> [1] "beers"
```

Beer me!
--------

``` r
beer_me()
#> # A tibble: 1 x 10
#>      ID                    Beer              Brewery    City State  Style
#>   <chr>                   <chr>                <chr>   <chr> <chr>  <chr>
#> 1  1452 Laimas Kölsch Style Ale Fate Brewing Company Boulder    CO Kölsch
#> # ... with 4 more variables: Ounces <dbl>, ABV_percent <dbl>, IBUs <dbl>,
#> #   Litres <dbl>
```

``` r
beer_me(number = 4)
#> # A tibble: 4 x 10
#>      ID                   Beer                       Brewery      City
#>   <chr>                  <chr>                         <chr>     <chr>
#> 1  2105              Even Keel Ballast Point Brewing Company San Diego
#> 2   741 Dale's Pale Ale (2002)           Oskar Blues Brewery     Lyons
#> 3  1502            BrightCider            2 Towns Ciderhouse Corvallis
#> 4   992      oSKAr the G'Rauch           Oskar Blues Brewery  Longmont
#> # ... with 6 more variables: State <chr>, Style <chr>, Ounces <dbl>,
#> #   ABV_percent <dbl>, IBUs <dbl>, Litres <dbl>
```

I'm working on plotting the cans as images (from [this](http://www.craftcans.com/db.php?cat=cans) page), so that may or may not be done soon. Withering criticisms/lovely suggestions always welcome.
