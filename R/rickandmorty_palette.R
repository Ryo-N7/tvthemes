rickAndMorty_palette <- c(
  "#01B4C6", ## #01B4C6 R&M turqoise
  "#97ce4c",  ## #97ce4c R&M green
  "#FFF874",  ## #FFF874 Morty yellow
  "#BEE5FD",  ## #BEE5FD Rick blue
  "#F675DA", ## #F675DA summer pink
  "#44281d",  ## regular brown
  "#3a4767", ## #3a4767 morty pants navy
  "#F8D3AC", ## #7FD112 portal green   #F8D3AC skin beige
  "#E64358"#,  ## #2D8844 portal darker green   #E64358 beth red
  #"#ededee"  ## light grey
)

## various blue-turqoise shades
# #02afc5
# #35c9dd
# #87d1db
# #a9f3fd
# #4cb5c3

#' @title Rick & Morty color palette
#' @description Rick & Morty color palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname rickAndMorty_pal
#' @export
#' @examples
#' library(scales)
#' show_col(rickAndMorty_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

rickAndMorty_pal <- function(n,
                             type = c("discrete", "continuous"),
                             reverse = FALSE){
  rickAndMorty <- rickAndMorty_palette

  if (reverse == TRUE) {
    rickAndMorty <- rev(rickAndMorty)
  }

  if (missing(n)) {
    n <- length(rickAndMorty)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(rickAndMorty)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(rickAndMorty)}!"))
  }

  rickAndMorty <- switch(type,
                     continuous = grDevices::colorRampPalette(rickAndMorty)(n),
                     discrete = rickAndMorty[1:n])

  rickAndMorty <- scales::manual_pal(rickAndMorty)

  return(rickAndMorty)
}

#' @title scale_color_rickAndMorty
#' @rdname rickAndMorty_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_rickAndMorty()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_rickAndMorty <- function(n, type = "discrete",
                                     reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("color", "rickAndMorty", rickAndMorty_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = rickAndMorty_pal(n = n, type = type,
                                                         reverse = reverse)(8))
  }
}

#' @title scale_colour_rickAndMorty
#' @rdname rickAndMorty_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_colour_rickAndMorty()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_rickAndMorty <- scale_color_rickAndMorty

#' @title scale_fill_rickAndMorty
#' @rdname rickAndMorty_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_rickAndMorty()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_rickAndMorty <- function(n, type = "discrete",
                                    reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("fill", "rickAndMorty", rickAndMorty_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = rickAndMorty_pal(n = n, type = type,
                                                             reverse = reverse)(8))
  }
}
