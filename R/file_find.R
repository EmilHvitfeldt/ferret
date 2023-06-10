#' Find Things in files
#'
#' @param x a character vector of files. I like `fs::dir_ls()`.
#' @param pattern A pattern to match.
#' @param open Logical indicator.
#'
#' @return Opens files at searched locations
#' @export
#'
#' @examplesIf FALSE
#' file_find("README.md", "install.packages")
file_find <- function(x, pattern, open = TRUE) {
  locations <- lapply(x, detect_in_file, pattern = pattern)
  locations <- purrr::list_rbind(locations)

  if (!open) {
    return(locations)
  }

  for (i in seq_len(nrow(locations))) {
    rstudioapi::navigateToFile(locations$file[i], locations$line[i])
  }
  invisible()
}

detect_in_file <- function(file, pattern) {
  tibble::tibble(file = file, line = which(grepl(pattern, readLines(file))))
}
