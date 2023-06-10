
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ferret

<!-- badges: start -->
<!-- badges: end -->

The goal of ferret is to provide an easy way to open a lot of documents
very fast. I tend to use “Find in files” a lot, but I don’t like how I
have to click on each instance. This packages tries to alleviate my
overwhelming problems.

## Installation

You can install the development version of ferret like so:

``` r
pak::pak("emilhvitfeldt/ferret)
```

## Example

I expect all use-cases are handled with the and only function
`ferret::file_find()` that takes a vector of file names

``` r
fs::dir_ls("R/") |> ferret::file_find("useMethod")
```
