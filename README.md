
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CraftCans

`CraftCans` is a tiny R package to get and play with the data from
[Craft Cans](http://www.craftcans.com/). It contains, among other
things, the quite wonderful `beer_me()` function, which will ‘serve’ you
a random beer from Craft Cans lovely stock. Sláinte\!

**edit:** Looks like the API is out. Pity. `beers` and `beer_me()` still
work, though.

## Installation

``` r

devtools::install_github("RobertMyles/CraftCans")

library(CraftCans)
```

## Usage

You can get a complete list of all the canned beers Craft Cans have with
`beer_table()`. Since this function downloads and parses data, a faster
alternative is `data("beers")`, which returns a dataframe of these
canned beers, taken from Craft Cans at the end of May 2017.
`beer_table()` will return up-to-date information, however.

``` r
data("beers")
beers
#> # A tibble: 2,410 x 10
#>    ID    Beer   Brewery  City  State Style Ounces ABV_percent  IBUs Litres
#>    <chr> <chr>  <chr>    <chr> <chr> <chr>  <dbl>       <dbl> <dbl>  <dbl>
#>  1 2692  Get T~ NorthGa~ Minn~ MN    Amer~     16         4.5    50  0.473
#>  2 2691  Maggi~ NorthGa~ Minn~ MN    Milk~     16         4.9    26  0.473
#>  3 2690  Wall'~ NorthGa~ Minn~ MN    Engl~     16         4.8    19  0.473
#>  4 2689  Pumpi~ NorthGa~ Minn~ MN    Pump~     16         6      38  0.473
#>  5 2688  Stron~ NorthGa~ Minn~ MN    Amer~     16         6      25  0.473
#>  6 2687  Parap~ NorthGa~ Minn~ MN    Extr~     16         5.6    47  0.473
#>  7 2686  Citra~ Against~ Loui~ KY    Amer~     16         8      68  0.473
#>  8 2685  Londo~ Against~ Loui~ KY    Engl~     16        12.5    80  0.473
#>  9 2684  35 K   Against~ Loui~ KY    Milk~     16         7.7    25  0.473
#> 10 2683  A Beer Against~ Loui~ KY    Amer~     16         4.2    42  0.473
#> # ... with 2,400 more rows
```

## Beer me\!

``` r
beer_me()
#> # A tibble: 1 x 10
#>   ID    Beer    Brewery  City  State Style Ounces ABV_percent  IBUs Litres
#>   <chr> <chr>   <chr>    <chr> <chr> <chr>  <dbl>       <dbl> <dbl>  <dbl>
#> 1 122   Golden~ Thunder~ Kear~ NE    Brag~     12         7.5    NA  0.355
```

``` r
beer_me(number = 4)
#> # A tibble: 4 x 10
#>   ID    Beer   Brewery  City   State Style Ounces ABV_percent  IBUs Litres
#>   <chr> <chr>  <chr>    <chr>  <chr> <chr>  <dbl>       <dbl> <dbl>  <dbl>
#> 1 853   PRO-A~ Souther~ Conroe TX    Amer~     12         9.9   100  0.355
#> 2 1918  CANfu~ Sierra ~ Chico  CA    Rye ~     12         6      NA  0.355
#> 3 740   Hop S~ Wild On~ Lake ~ IL    Amer~     12         8.2   100  0.355
#> 4 1600  Yunki~ Manayun~ Phila~ PA    Pump~     12         5.5    NA  0.355
```

I’m working on plotting the cans as images (from
[this](http://www.craftcans.com/db.php?cat=cans) page), so that may or
may not be done soon. Withering criticisms/lovely suggestions always
welcome.
