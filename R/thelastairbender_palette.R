## The Last Airbender palette

theLastAirbender_palette <- list(
  ## Fire Nation ----
  FireNation = c(
    "#ecb100", ## gold/yellowish
    "#a10000", ## darker red
    "#7E605E", ## lighish gray
    "#FF4500", ## orangered
    "#994823", ## brown-orange
    "#4B4C4E", ## charcoal grey
    "#572530", ## wine violet
    "#000000"  ## black
  ),
  ## Air Nomads ----
  AirNomads = c(
    "#ff9933", ## saffron
    "#C24841", ## darker reddish-orange
    "#FFFF33", ## lightyellow
    "#8B5B45", ## skybison brown
    "#87AFD1", ## light blue
    "#EEB05A", ## lighter orange
    "#DBC5A0"  ## skybison beige
  ),
  ## Earth Kingdom ----
  EarthKingdom = c(
    "#015E05", ## greeen
    "#B1A866", ## army green
    "#7A5C12", ## khaki brown
    "#646742", ## darker army green
    "#25351C", ## swamp green
    "#4C7022", ## khaki green
    "#C7C45E", ## lime green
    "#D2CFAB", ## beige-ish
    "#FEFED8"  ## light yellow
  ),
  ## Water Tribe ----
  WaterTribe = c(
    "#0047ab", ## cobalt
    "#1DB4D3", ## turqoise
    "#A2CAED", ## light blue
    "#AFB5B8", ## light grey
    "#120976", ## purple blue
    "#fffafa", ## snow white
    "#174D79", ## light teal blue
    "#949BBC"  ## light purple
  )
)

#' @title Avatar: The Last Airbender palette (deprecated)
#' @description Avatar: The Last Airbender palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param palette name of palette (FireNation, EarthKingdom, WaterTribe, AirNomads),
#' Default: "FireNation"
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname avatarTLA_pal
#' @export
#' @examples
#' library(scales)
#' show_col(avatarTLA_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

avatarTLA_pal <- function(palette = "FireNation", n,
                          type = c("discrete", "continuous"),
                          reverse = FALSE){
  .Deprecated("avatar_pal")
  avatarTLA <- theLastAirbender_palette[[palette]]

  if (reverse == TRUE) {
    avatarTLA <- rev(avatarTLA)
  }

  if (missing(n)) {
    n <- length(avatarTLA)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(avatarTLA)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(avatarTLA)}!"))
  }

  avatarTLA <- switch(type,
                      continuous = grDevices::colorRampPalette(avatarTLA)(n),
                      discrete = avatarTLA[1:n])

  avatarTLA <- scales::manual_pal(avatarTLA)

  return(avatarTLA)
}

#' @title Avatar: The Last Airbender palette
#' @description Avatar: The Last Airbender palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param palette name of palette (FireNation, EarthKingdom, WaterTribe, AirNomads),
#' Default: "FireNation"
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname avatar_pal
#' @export
#' @examples
#' library(scales)
#' show_col(avatar_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom glue glue
#' @importFrom grDevices colorRampPalette

avatar_pal <- function(palette = "FireNation", n,
                       type = c("discrete", "continuous"),
                       reverse = FALSE){
  avatar <- theLastAirbender_palette[[palette]]

  if (reverse == TRUE) {
    avatar <- rev(avatar)
  }

  if (missing(n)) {
    n <- length(avatar)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(avatar)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(avatar)}!"))
  }

  avatar <- switch(type,
                   continuous = grDevices::colorRampPalette(avatar)(n),
                   discrete = avatar[1:n])

  avatar <- scales::manual_pal(avatar)

  return(avatar)
}

#' @title scale_color_avatarTLA
#' @rdname avatarTLA_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_avatarTLA()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_avatarTLA <- function(palette = "FireNation", n, type = "discrete",
                                  reverse = FALSE, ...){
  .Deprecated("scale_color_avatar")
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "avatarTLA",
                            avatarTLA_pal(palette = palette, n = n, type = type,
                                          reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = avatarTLA_pal(palette = palette, n = n, type = type,
                                                          reverse = reverse)(8))
  }
}

#' @title scale_color_avatar
#' @rdname avatar_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_avatar()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_avatar <- function(palette = "FireNation", n, type = "discrete",
                               reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("color", "avatarTLA",
                            avatar_pal(palette = palette, n = n, type = type,
                                       reverse = reverse), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = avatar_pal(palette = palette, n = n, type = type,
                                                       reverse = reverse)(8))
  }
}

#' @title scale_colour_avatarTLA
#' @rdname avatarTLA_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_colour_avatarTLA()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_avatarTLA <- scale_color_avatarTLA

#' @title scale_colour_avatar
#' @rdname avatar_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_colour_avatar()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_avatar <- scale_color_avatar

#' @title scale_fill_avatarTLA
#' @rdname avatarTLA_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_avatarTLA()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_avatarTLA <- function(palette = "FireNation", n, type = "discrete",
                                 reverse = FALSE, ...){
  .Deprecated("scale_fill_avatar")
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "avatarTLA",
                            avatarTLA_pal(palette = palette, n = n, type = type,
                                          reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = avatarTLA_pal(palette = palette, n = n, type = type,
                                                         reverse = reverse)(8))
  }
}

#' @title scale_fill_avatar
#' @rdname avatar_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_avatar()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_avatar <- function(palette = "FireNation", n, type = "discrete",
                              reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "avatarTLA",
                            avatar_pal(palette = palette, n = n, type = type,
                                       reverse = reverse), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = avatar_pal(palette = palette, n = n, type = type,
                                                      reverse = reverse)(8))
  }
}

## Air
#ff9933 saffron
#C24841 darker orange
#EEB05A lighter orange
#DBC5A0 skybison beige
#8B5B45 skybison brown
#87AFD1 light blue
#FFFF33  ## lightyellow

## Earth
#B1A866 army green
#646742 darker army green
#D2CFAB beige-ish
#25351C swamp green
#4C7022 khaki green
#C7C45E lime green
#7A5C12 khaki brown
#015E05 greeen
#7F6100 light brown
#FEFED8 light yellow

## Water
#0047ab ## cobalt
#1DB4D3 ## turqoise
#246FB3 ## cold blue
#1009B7 ## darker blue
#120976 ## purple blue
#174D79 ## light teal blue
#949BBC ## light purple
#405379 ## dark blue purple
#AFB5B8 ## light grey
#A2CAED ## light blue
