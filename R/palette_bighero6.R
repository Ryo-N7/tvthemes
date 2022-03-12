bigHero6_palette <- c(
  "#ffff33",  ## gogo yellow #ffff1a #ffff19
  "#ffa500",  ## honeylemon/fredzilla orange #F84527  #ffa500  #ff8c00
  "#4F366F",  ## baymax/hiro darkpurple
  "#ff0000",  ## baymax red
  "#00fa9a",  ## wasabi green
  "#3177D5",  ## fredzilla blue  #50F2F7
  "#c71585",  ## honey lemon violet #9400d3 #ff00ff #C70039  #c71585
  "#000000"   ## black
)

#' @title Big Hero 6 palette
#' @description Big Hero 6 palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname bigHero6_pal
#' @export
#' @examples
#' library(scales)
#' show_col(bigHero6_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom grDevices colorRampPalette

bigHero6_pal <- function(n, type = c("discrete", "continuous"),
                         reverse = FALSE){
  bigHero6 <- bigHero6_palette

  if (reverse == TRUE) {
    bigHero6 <- rev(bigHero6)
  }

  if (missing(n)) {
    n <- length(bigHero6)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(bigHero6)) {
    stop(paste0("Palette does not have ", n, " colors, maximum is ", length(bigHero6), "!"))
  }

  bigHero6 <- switch(type,
                     continuous = grDevices::colorRampPalette(bigHero6)(n),
                     discrete = bigHero6[1:n])

  bigHero6 <- scales::manual_pal(bigHero6)

  return(bigHero6)
}

#' @title scale_color_bigHero6
#' @rdname bigHero6_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_bigHero6()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_bigHero6 <- function(n, type = "discrete",
                                 reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("color", "bigHero6",
                          bigHero6_pal(n = n, type = type,
                                       reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = bigHero6_pal(n = n, type = type,
                                                      reverse = reverse)(8))
  }
}

#' @title scale_colour_bigHero6
#' @rdname bigHero6_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_colour_bigHero6()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_bigHero6 <- scale_color_bigHero6

#' @title scale_fill_bigHero6
#' @rdname bigHero6_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_bigHero6()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_bigHero6 <- function(n, type = "discrete",
                                reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("fill", "bigHero6",
                          bigHero6_pal(n = n, type = type,
                                       reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = bigHero6_pal(n = n, type = type,
                                                         reverse = reverse)(8))
  }
}
