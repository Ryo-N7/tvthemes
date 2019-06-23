## Hilda palettes

hilda_palette = list(
  ## Hilda Day
  Day = c(
    "#F6E0D2",  ##
    "#DFA398",  ##
    "#9C6755",  ##
    "#659794",  ##
    "#EA967C",  ##
    "#F5C98E",  ##
    "#D65B5A",  ##
    "#586085"   ##
  ),
  ## Hilda Dusk
  Dusk = c(
    "#EFCBCB",  ##
    "#B47880",  ##
    "#824B51",  ##
    "#635761",  ##
    "#AD616C",  ##
    "#D1A391",  ##
    "#7D3450",  ##
    "#2B2D42"   ##
  ),
  ## Hilda Night
  Night = c(
    "#E8E1E9",  ##
    "#C0A5AA",  ##
    "#4D3944",  ##
    "#7083A4",  ##
    "#B3A2B4",  ##
    "#C9CCEA",  ##
    "#3B3960",  ##
    "#1E2142"   ##
  )
)


#' @title Hilda palette
#' @description Hilda palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname hildaDaypal
#' @export
#' @importFrom scales manual_pal

hilda_pal <- function(palette, n = n, type = c("continuous", "discrete"),
                         reverse = FALSE){
  hilda <- hilda_palette[[palette]]

  if (reverse == TRUE) {
    hilda <- rev(hilda)
  }

  if (missing(n)) {
    n <- length(hilda)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(hilda)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(hilda)}!"))
  }

  hilda <- switch(type,
                     continuous = grDevices::colorRampPalette(hilda)(n),
                     discrete = hilda[1:n])

  hilda <- scales::manual_pal(hilda)

  return(hilda)
}

#' @title scale_color_hilda
#' @rdname hildapal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_hilda <- function(palette = "Day", n = n, type = c("continuous", "discrete"),
                              reverse = FALSE, ...){

  ggplot2::discrete_scale("color", "hilda",
                          hilda_pal(palette = palette, n = n, type = type,
                                    reverse = reverse), ...)
}

#' @title scale_colour_hilda
#' @rdname hildapal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_hilda <- scale_color_hilda

#' @title scale_fill_hilda
#' @rdname hildapal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_hilda <- function(palette = "Day", n = n, type = c("continuous", "discrete"),
                             reverse = FALSE, ...){
  ggplot2::discrete_scale("fill", "hilda",
                          hilda_pal(palette = palette, n = n, type = type,
                                    reverse = reverse), ...)
}








#' @title Hilda palette
#' @description Hilda palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname hildaDuskpal
#' @export
#' @importFrom scales manual_pal

hildaDusk_pal <- function(n = n, type = c("continuous", "discrete"),
                          reverse = FALSE){
  hildaDusk <- hildaDusk_palette

  if (reverse == TRUE) {
    hildaDusk <- rev(hildaDusk)
  }

  if (missing(n)) {
    n <- length(hildaDusk)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(hildaDusk)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(hildaDusk)}!"))
  }

  hildaDusk <- switch(type,
                     continuous = grDevices::colorRampPalette(hildaDusk)(n),
                     discrete = hildaDusk[1:n])

  hildaDusk <- scales::manual_pal(hildaDusk)

  return(hildaDusk)
}

#' @title scale_color_hildaDusk
#' @rdname hildaDuskpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_hildaDusk <- function(n = n, type = c("continuous", "discrete"),
                                  reverse = FALSE, ...){
  ggplot2::discrete_scale("color", "hilda",
                          hildaDay_pal(n = n, type = type,
                                       reverse = reverse), ...)
}

#' @title scale_colour_hildaDusk
#' @rdname hildaDuskpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_hildaDusk <- scale_color_hildaDusk

#' @title scale_fill_hildaDusk
#' @rdname hildaDuskpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_hildaDusk <- function(n = n, type = c("continuous", "discrete"),
                                 reverse = FALSE, ...){
  ggplot2::discrete_scale("fill", "hilda",
                          hildaDay_pal(n = n, type = type,
                                       reverse = reverse), ...)
}



#' @title Hilda palette
#' @description Hilda palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname hildaNightpal
#' @export
#' @importFrom scales manual_pal

hildaNight_pal <- function(n = n, type = c("continuous", "discrete"),
                           reverse = FALSE){
  hildaNight <- hildaNight_palette

  if (reverse == TRUE) {
    hildaNight <- rev(hildaNight)
  }

  if (missing(n)) {
    n <- length(hildaNight)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(hildaNight)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(hildaNight)}!"))
  }

  hildaNight <- switch(type,
                      continuous = grDevices::colorRampPalette(hildaNight)(n),
                      discrete = hildaNight[1:n])

  hildaNight <- scales::manual_pal(hildaNight)

  return(hildaNight)
}

#' @title scale_color_hildaNight
#' @rdname hildaNightpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_hildaNight <- function(n = n, type = c("continuous", "discrete"),
                                   reverse = FALSE, ...){
  ggplot2::discrete_scale("color", "hilda",
                          hildaDay_pal(n = n, type = type,
                                       reverse = reverse), ...)
}

#' @title scale_colour_hildaNight
#' @rdname hildaNightpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_hildaNight <- scale_color_hildaNight

#' @title scale_fill_hilda
#' @rdname hildaNightpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_hildaNight <- function(n = n, type = c("continuous", "discrete"),
                                  reverse = FALSE, ...){
  ggplot2::discrete_scale("fill", "hilda",
                          hildaDay_pal(n = n, type = type,
                                       reverse = reverse), ...)
}
