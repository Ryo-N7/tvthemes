## Brooklyn Nine-Nine palette

brooklyn99_palette <- list(
  ## B99 regular palette ----
  Regular = c(
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
  ),
  ## B99 dark palette ----
  Dark = c(
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
)

#' @title Brooklyn Nine Nine Color and Fill Scales
#' @description Brooklyn Nine Nine Color and Fill Scales
#' @details Colors that work well with the blue background!
#' @inheritDotParams ggplot2::discrete_scale
#' @param palette name of palette, Regular or Dark Default: "Regular"
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname brooklyn99_pal
#' @export
#' @examples
#' library(scales)
#' show_col(brooklyn99_pal()(5))
#' show_col(brooklyn99_pal(palette = "Dark")(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

brooklyn99_pal <- function(palette = "Regular", n = n,
                           type = c("discrete", "continuous"),
                           reverse = FALSE){
  brooklyn99 <- brooklyn99_palette[[palette]]

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
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_brooklyn99()
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_brooklyn99(palette = "Dark")
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_brooklyn99 <- function(palette = "Regular", n = n,
                                   type = "discrete",
                                   reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("color", "brooklyn99",
                          brooklyn99_pal(palette = palette, n = n, type = type,
                                       reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = brooklyn99_pal(palette = palette, n = n, type = type,
                                                      reverse = reverse)(8))
  }
}

#' @title scale_colour_brooklyn99
#' @rdname brooklyn99_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_colour_brooklyn99(palette = "Dark")
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_brooklyn99 <- scale_color_brooklyn99

#' @title scale_fill_brooklyn99
#' @rdname brooklyn99_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_brooklyn99()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_brooklyn99 <- function(palette = "Regular", n = n,
                                  type = "discrete",
                                  reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("fill", "brooklyn99",
                          brooklyn99_pal(palette = palette, n = n, type = type,
                                       reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = brooklyn99_pal(palette = palette, n = n, type = type,
                                                           reverse = reverse)(8))
  }
}
