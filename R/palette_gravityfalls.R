gravityFalls_palette <- c(
  "#417BA1",  ## dipper light blue
  "#ff1493",  ## mabel pink  #DF504C
  "#ffff2e",  ## bill cipher yellow #ffff2e #fff400
  "#345634",  ## soos green
  "#8b0000",  ## fez burgundy #8b0000  #732335
  "#ff6700",  ## wendy orange
  "#93C0D5",  ## lil gideon skyblue
  "#8b4513",  ## mcgucket brown #8b4513  #8E6537
  "#9248A7",  ## pacifica purple
  "#1c8859",  ## wendy green
  "#474747",  ## grunkle grey
  "#8fbc8f",  ## sheriff blubs green
  "#d2b48c",  ## stanford coat beige #d2b48c #dfbe58
  "#000000"   ## robbie black
)

#' @title Gravity Falls palette
#' @description Gravity Falls palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname gravityFalls_pal
#' @export
#' @examples
#' library(scales)
#' show_col(gravityFalls_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom grDevices colorRampPalette

gravityFalls_pal <- function(n, type = c("discrete", "continuous"),
                         reverse = FALSE){
  gravityFalls <- gravityFalls_palette

  if (reverse == TRUE) {
    gravityFalls <- rev(gravityFalls)
  }

  if (missing(n)) {
    n <- length(gravityFalls)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(gravityFalls)) {
    stop(paste0("Palette does not have ", n, " colors, maximum is ", length(gravityFalls), "!"))
  }

  gravityFalls <- switch(type,
                     continuous = grDevices::colorRampPalette(gravityFalls)(n),
                     discrete = gravityFalls[1:n])

  gravityFalls <- scales::manual_pal(gravityFalls)

  return(gravityFalls)
}

#' @title scale_color_gravityFalls
#' @rdname gravityFalls_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 3.5) +
#'      scale_color_gravityFalls()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_gravityFalls <- function(n, type = "discrete",
                                 reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "gravityFalls",
                            gravityFalls_pal(n = n, type = type,
                                         reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = gravityFalls_pal(n = n, type = type,
                                                         reverse = reverse)(8))
  }
}

#' @title scale_colour_gravityFalls
#' @rdname gravityFalls_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 3.5) +
#'      scale_colour_gravityFalls()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_gravityFalls <- scale_color_gravityFalls

#' @title scale_fill_gravityFalls
#' @rdname gravityFalls_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_gravityFalls()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_gravityFalls <- function(n, type = "discrete",
                                reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "gravityFalls",
                            gravityFalls_pal(n = n, type = type,
                                         reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = gravityFalls_pal(n = n, type = type,
                                                        reverse = reverse)(8))
  }
}
