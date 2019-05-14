## Fire Nation ----

fireNation_palette <- c(
  "#ecb100", ## gold/yellowish
  "#a10000", ## darker red
  "#7E605E", ## lighish gray
  "#FF4500", ## orangered
  "#994823", ## brown-orange
  "#4B4C4E", ## charcoal grey
  "#572530", ## wine violet
  "#000000"  ## black
)

#' @title Fire Nation palette
#' @description Fire Nation palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname fireNation_pal
#' @export
#' @importFrom scales manual_pal

fireNation_pal <- function(){
  scales::manual_pal(fireNation_palette)
}

#' @title scale_color_fireNation
#' @rdname fireNation_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_fireNation <- function(...){
  ggplot2::discrete_scale("color", "fireNation", fireNation_pal(), ...)
}

#' @title scale_colour_fireNation
#' @rdname fireNation_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_fireNation <- scale_color_fireNation

#' @title scale_fill_fireNation
#' @rdname fireNation_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_fireNation <- function(...){
  ggplot2::discrete_scale("fill", "fireNation", fireNation_pal(), ...)
}

## Air Nomads ----

airNomads_palette <- c(
  "#ff9933", ## saffron
  "#C24841", ## darker reddish-orange
  "#FFFF33", ## lightyellow
  "#8B5B45", ## skybison brown
  "#87AFD1", ## light blue
  "#EEB05A", ## lighter orange
  "#DBC5A0"  ## skybison beige
)

#ff9933 saffron
#C24841 darker orange
#EEB05A lighter orange
#DBC5A0 skybison beige
#8B5B45 skybison brown
#87AFD1 light blue
#FFFF33  ## lightyellow

#' @title Air Nomads palette
#' @description Air Nomads palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname airNomads_pal
#' @export
#' @importFrom scales manual_pal

airNomads_pal <- function(){
  scales::manual_pal(airNomads_palette)
}

#' @title scale_color_airNomads
#' @rdname airNomads_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_airNomads <- function(...){
  ggplot2::discrete_scale("color", "airNomads", airNomads_pal(), ...)
}

#' @title scale_colour_airNomads
#' @rdname airNomads_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_airNomads <- scale_color_airNomads

#' @title scale_fill_air_nomads
#' @rdname airNomads_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_airNomads <- function(...){
  ggplot2::discrete_scale("fill", "airNomads", airNomads_pal(), ...)
}

## Earth Kingdom ----

earthKingdom_palette <- c(
  "#015E05", ## greeen
  "#B1A866", ## army green
  "#7A5C12", ## khaki brown
  "#646742", ## darker army green
  "#25351C", ## swamp green
  "#4C7022", ## khaki green
  "#C7C45E", ## lime green
  "#D2CFAB", ## beige-ish
  "#FEFED8"  ## light yellow
)

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

#' @title Earth Kingdom palette
#' @description Earth Kingdom palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname earth_kingdom_pal
#' @export
#' @importFrom scales manual_pal

earthKingdom_pal <- function(){
  scales::manual_pal(earthKingdom_palette)
}

#' @title scale_color_earthKingdom
#' @rdname earth_kingdom_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_earthKingdom <- function(...){
  ggplot2::discrete_scale("color", "earthKingdom", earthKingdom_pal(), ...)
}

#' @title scale_colour_earthKingdom
#' @rdname earth_kingdom_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_earthKingdom <- scale_color_earthKingdom

#' @title scale_fill_earthKingdom
#' @rdname earth_kingdom_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_earthKingdom <- function(...){
  ggplot2::discrete_scale("fill", "earthKingdom", earthKingdom_pal(), ...)
}

## Water Tribe ----

waterTribe_palette <- c(
  "#0047ab", ## cobalt
  "#1DB4D3", ## turqoise
  "#A2CAED", ## light blue
  "#AFB5B8", ## light grey
  "#120976", ## purple blue
  "#fffafa", ## snow white
  "#174D79", ## light teal blue
  "#949BBC"  ## light purple
)

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

#' @title Water Tribe palette
#' @description Water Tribe palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname waterTribe_pal
#' @export
#' @importFrom scales manual_pal

waterTribe_pal <- function(){
  scales::manual_pal(waterTribe_palette)
}

#' @title scale_color_waterTribe
#' @rdname waterTribe_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_waterTribe <- function(...){
  ggplot2::discrete_scale("color", "waterTribe", waterTribe_pal(), ...)
}

#' @title scale_colour_waterTribe
#' @rdname waterTribe_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_waterTribe <- scale_color_waterTribe

#' @title scale_fill_waterTribe
#' @rdname waterTribe_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_waterTribe <- function(...){
  ggplot2::discrete_scale("fill", "waterTribe", waterTribe_pal(), ...)
}
