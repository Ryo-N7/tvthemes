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

#' @title fireNation_pal
#' @description Fire Nation palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname fireNation_pal
#' @export
#' @importFrom scales manual_pal

fireNation_pal <- function(){
  scales::manual_pal(fireNation_palette)
}

#' @title scale_color_fireNation
#' @description Fire Nation color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_fireNation
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_fireNation <- function(...){
  ggplot2::discrete_scale("color", "fireNation", fireNation_pal(), ...)
}

#' @title scale_fill_fireNation
#' @description Fire Nation fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_fireNation
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_fireNation <- function(...){
  ggplot2::discrete_scale("fill", "fireNation", fireNation_pal(), ...)
}

## Air Nomads ----

airNomads_palette <- c(
  "#ff9933", ## saffron
  "#C24841", ## darker orange
  "#DBC5A0", ## skybison beige
  "#8B5B45", ## skybison brown
  "#87AFD1", ## light blue
  "#EEB05A", ## lighter orange
  "#FFFF33"  ## lightyellow
)

#ff9933 saffron
#C24841 darker orange
#EEB05A lighter orange
#DBC5A0 skybison beige
#8B5B45 skybison brown
#87AFD1 light blue
#FFFF33  ## lightyellow

#' @title airNomads_pal
#' @description Air Nomads palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname airNomads_pal
#' @export
#' @importFrom scales manual_pal

airNomads_pal <- function(){
  scales::manual_pal(airNomads_palette)
}

#' @title scale_color_airNomads
#' @description Air Nomads color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_airNomads
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_airNomads <- function(...){
  ggplot2::discrete_scale("color", "airNomads", airNomads_pal(), ...)
}

#' @title scale_fill_air_nomads
#' @description Air Nomads fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_airNomads
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_airNomads <- function(...){
  ggplot2::discrete_scale("fill", "airNomads", airNomads_pal(), ...)
}

## Earth Kingdom ----

earthKingdom_palette <- c(
  "#B1A866", ## army green
  "#646742", ## darker army green
  "#D2CFAB", ## beige-ish
  "#25351C", ## swamp green
  "#4C7022", ## khaki green
  "#C7C45E", ## lime green
  "#7A5C12", ## khaki brown
  "#015E05", ## greeen
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

#' @title earthKingdom_pal
#' @description Earth Kingdom palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname earth_kingdom_pal
#' @export
#' @importFrom scales manual_pal

earthKingdom_pal <- function(){
  scales::manual_pal(earthKingdom_palette)
}

#' @title scale_color_earthKingdom
#' @description Earth Kingdom color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_earthKingdom
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_earthKingdom <- function(...){
  ggplot2::discrete_scale("color", "earthKingdom", earthKingdom_pal(), ...)
}

#' @title scale_fill_earthKingdom
#' @description Earth Kingdom fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_earthKingdom
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_earthKingdom <- function(...){
  ggplot2::discrete_scale("fill", "earthKingdom", earthKingdom_pal(), ...)
}

## Water Tribe ----

waterTribe_palette <- c(
  "#0047ab", ## cobalt
  "#1DB4D3", ## turqoise
  "#fffafa", ## snow white
  "#AFB5B8", ## light grey
  "#120976", ## purple blue
  "#A2CAED", ## light blue
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

#' @title waterTribe_pal
#' @description Water Tribe palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname waterTribe_pal
#' @export
#' @importFrom scales manual_pal

waterTribe_pal <- function(){
  scales::manual_pal(waterTribe_palette)
}

#' @title scale_color_waterTribe
#' @description Water Tribe color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_waterTribe
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_waterTribe <- function(...){
  ggplot2::discrete_scale("color", "waterTribe", waterTribe_pal(), ...)
}

#' @title scale_fill_waterTribe
#' @description Water Tribe fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_waterTribe
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_waterTribe <- function(...){
  ggplot2::discrete_scale("fill", "waterTribe", waterTribe_pal(), ...)
}
