## Hilda palettes

hilda_palette <- list(
  ## Hilda Day
  Day = c(
    "#F6E0D2",  ## hlida white paper
    "#DFA398",  ##
    "#9C6755",  ##
    "#659794",  ## hilda turqoise
    "#EA967C",  ## hilda lightorange
    "#F5C98E",  ## hilda beige
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
#' @details Color set from Matt Shanks & `@ChevyRay`
#' @inheritDotParams ggplot2::discrete_scale
#' @param palette name of palette (Day, Dusk, Night), Default: "Day"
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname hilda_pal
#' @export
#' @examples
#' library(scales)
#' show_col(hilda_pal(palette = "Dusk")(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

hilda_pal <- function(palette, n,
                      type = c("discrete", "continuous"),
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
#' @rdname hilda_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_hilda(palette = "Day")
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_hilda(palette = "Night")
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_hilda <- function(palette = "Day", n, type = "discrete",
                              reverse = FALSE, ...){

  if (type == "discrete") {
  ggplot2::discrete_scale("color", "hilda",
                          hilda_pal(palette = palette, n = n, type = type,
                                    reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = hilda_pal(palette = palette, n = n, type = type,
                                        reverse = reverse)(8))
  }
}

#' @title scale_colour_hilda
#' @rdname hilda_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_colour_hilda(palette = "Day")
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_hilda <- scale_color_hilda

#' @title scale_fill_hilda
#' @rdname hilda_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_hilda(palette = "Night")
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_hilda <- function(palette = "Day", n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "hilda",
                            hilda_pal(palette = palette, n = n, type = type,
                                      reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = hilda_pal(palette = palette, n = n, type = type,
                                                      reverse = reverse)(8))
  }
}
