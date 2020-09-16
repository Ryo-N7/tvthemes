## Parks & Rec regular palette ----
parksAndRec_palette <- c(
  "#bdbdbd", ## yellowtan #fcf7e8  grey #969696    #bdbdbd
  "#a51209", ## maroon
  "#ffdb58",  ## lighter green (turqoise-ish) #238443     #ffdb58  mustard
  "#ec7014",  ## #4C3114 darker brown   #ec7014 darker orange
  "#7A491E",  ## regular brown
  "#C24841", ## darker reddish-orange
  "#005502", ## darker green
  "#f7fcb9",  ## lime green <<<<
  "#69983a", ## lightish gree #1A5E1F darkgreen
  "#b5651d"  ## beige #fee0d2     #b5651d light brown
)

#1A5E1FFF ## darkgreen
#CCFFBB ## lime green
#238443 ## lighter green
#4C3114 ## darker brown
#7A491E ## regular brown
#005502 ## darker green
#fcf7e8 ## grass green

#' @title Parks & Recreation palette
#' @description Parks & Recreation palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname parksAndRec_pal
#' @export
#' @examples
#' library(scales)
#' show_col(parksAndRec_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

parksAndRec_pal <- function(n,
                            type = c("discrete", "continuous"),
                            reverse = FALSE){
  parksAndRec <- parksAndRec_palette

  if (reverse == TRUE) {
    parksAndRec <- rev(parksAndRec)
  }

  if (missing(n)) {
    n <- length(parksAndRec)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(parksAndRec)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(parksAndRec)}!"))
  }

  parksAndRec <- switch(type,
                     continuous = grDevices::colorRampPalette(parksAndRec)(n),
                     discrete = parksAndRec[1:n])

  parksAndRec <- scales::manual_pal(parksAndRec)

  return(parksAndRec)
}

#' @title scale_color_parksAndRec
#' @rdname parksAndRec_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_parksAndRec()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_parksAndRec <- function(n, type = "discrete",
                                    reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("color", "parksAndRec", parksAndRec_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = parksAndRec_pal(n = n, type = type,
                                                         reverse = reverse)(8))
  }
}

#' @title scale_colour_parksAndRec
#' @rdname parksAndRec_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_colour_parksAndRec()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_parksAndRec <- scale_color_parksAndRec

#' @title scale_fill_parksAndRec
#' @rdname parksAndRec_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_parksAndRec()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_parksAndRec <- function(n, type = "discrete",
                                   reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("fill", "parksAndRec", parksAndRec_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = parksAndRec_pal(n = n, type = type,
                                                            reverse = reverse)(8))
  }
}
