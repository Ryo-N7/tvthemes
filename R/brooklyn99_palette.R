## B99 regular palette ----
brooklyn99_palette <- c(
  "#e7298a", ## hot pink
  "#72bcd4", ## lightblue
  "#e41a1c", ## red
  "#FCF40E", ## yellow
  "#49f149", ## light-green
  "#f16913", ## orange
  "#525252", ## grey
  "#F9FEFF", ## white
  "#000E33", ## dark navy
  "#000000"  ## black
)

#' @title Brooklyn Nine Nine Color and Fill Scales
#' @description Brooklyn Nine Nine Color and Fill Scales
#' @details Colors that work well with the blue background!
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname brooklyn99_pal
#' @export
#' @importFrom scales manual_pal

brooklyn99_pal <- function(n = n, type = c("continuous", "discrete"),
                           reverse = FALSE){
  brooklyn99 <- brooklyn99_palette

  if (reverse == TRUE) {
    brooklyn99 <- rev(brooklyn99)
  }

  if (missing(n)) {
    n <- length(brooklyn99)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(brooklyn99)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(brooklyn99)}!"))
  }

  brooklyn99 <- switch(type,
                     continuous = grDevices::colorRampPalette(brooklyn99)(n),
                     discrete = brooklyn99[1:n])

  brooklyn99 <- scales::manual_pal(brooklyn99)

  return(brooklyn99)
}

#' @title scale_color_brooklyn99
#' @rdname brooklyn99_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_brooklyn99 <- function(n = n, type = c("continuous", "discrete"),
                                   reverse = FALSE, ...){
  ggplot2::discrete_scale("color", "brooklyn99",
                          brooklyn99_pal(n = n, type = type,
                                       reverse = reverse), ...)
}

#' @title scale_colour_brooklyn99
#' @rdname brooklyn99_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_brooklyn99 <- scale_color_brooklyn99

#' @title scale_fill_brooklyn99
#' @rdname brooklyn99_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_brooklyn99 <- function(n = n, type = c("continuous", "discrete"),
                                  reverse = FALSE, ...){
  ggplot2::discrete_scale("fill", "brooklyn99",
                          brooklyn99_pal(n = n, type = type,
                                       reverse = reverse), ...)
}

## B99 dark palette ----
brooklyn99_dark_palette <- c(
  "#6CA9C3", ## light blue
  "#3A3533", ## dark gray
  "#000E33", ## dark navy
  "#800000", ## maroon
  "#CBCFD2", ## light gray
  "#175E78", ## turqoise
  "#DAA520", ## goldenrod
  "#174D79", ## dark teal
  "#000000"  ## black
)

#' @title Dark version of Brooklyn Nine-Nine palette
#' @description Dark version of Brooklyn Nine-Nine palette
#' @return B99 dark palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname brooklyn99_dark_pal
#' @export
#' @importFrom scales manual_pal

brooklyn99_dark_pal <- function(n = n, type = c("continuous", "discrete"),
                                reverse = FALSE){
  brooklyn99_dark <- brooklyn99_dark_palette

  if (reverse == TRUE) {
    brooklyn99_dark <- rev(brooklyn99_dark)
  }

  if (missing(n)) {
    n <- length(brooklyn99_dark)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(brooklyn99_dark)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(brooklyn99_dark)}!"))
  }

  brooklyn99_dark <- switch(type,
                       continuous = grDevices::colorRampPalette(brooklyn99_dark)(n),
                       discrete = brooklyn99_dark[1:n])

  brooklyn99_dark <- scales::manual_pal(brooklyn99_dark)

  return(brooklyn99_dark)
}

#' @title scale_color_brooklyn99_dark
#' @rdname brooklyn99_dark_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_brooklyn99_dark <- function(n = n, type = c("continuous", "discrete"),
                                        reverse = FALSE, ...){
  ggplot2::discrete_scale("color", "brooklyn99_dark",
                          brooklyn99_dark_pal(n = n, type = type,
                                         reverse = reverse), ...)
}

#' @title scale_colour_brooklyn99_dark
#' @rdname brooklyn99_dark_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_brooklyn99_dark <- scale_color_brooklyn99_dark

#' @title scale_fill_brooklyn99_dark
#' @rdname brooklyn99_dark_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_brooklyn99_dark <- function(n = n, type = c("continuous", "discrete"),
                                       reverse = FALSE, ...){
  ggplot2::discrete_scale("fill", "brooklyn99_dark",
                          brooklyn99_dark_pal(n = n, type = type,
                                         reverse = reverse), ...)
}

