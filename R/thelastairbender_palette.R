## Fire Nation ----

fire_nation_palette <- c(
  "#ecb100", ## gold/yellowish
  "#a10000", ## darker red
  "#7E605E", ## lighish gray
  "#994823", ## brown-orange
  "#4B4C4E", ## charcoal grey
  "#572530", ## wine violet
  "#000000"  ## black
)

#' @title fire_nation_pal
#' @description Fire Nation palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname fire_nation_pal
#' @export
#' @importFrom scales manual_pal

fire_nation_pal <- function(){
  scales::manual_pal(fire_nation_palette)
}

#' @title scale_color_fire_nation
#' @description Fire Nation color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_fire_nation
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_fire_nation <- function(...){
  ggplot2::discrete_scale("color", "fire_nation", fire_nation_pal(), ...)
}

#' @title scale_fill_fire_nation
#' @description Fire Nation fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_fire_nation
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_fire_nation <- function(...){
  ggplot2::discrete_scale("fill", "fire_nation", fire_nation_pal(), ...)
}

## Air Nomads ----

air_nomads_palette <- c(
  "#ff9933", ## saffron
  "#C24841", ## darker orange
  "#DBC5A0", ## skybison beige
  "#8B5B45", ## skybison brown
  "#87AFD1", ## light blue
  "#EEB05A"  ## lighter orange
)

#ff9933 saffron
#C24841 darker orange
#EEB05A lighter orange
#DBC5A0 skybison beige
#8B5B45 skybison brown
#87AFD1 light blue

#' @title air_nomads_pal
#' @description Air Nomads palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname air_nomads_pal
#' @export
#' @importFrom scales manual_pal

air_nomads_pal <- function(){
  scales::manual_pal(air_nomads_palette)
}

#' @title scale_color_air_nomads
#' @description Air Nomads color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_air_nomads
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_air_nomads <- function(...){
  ggplot2::discrete_scale("color", "air_nomads", air_nomads_pal(), ...)
}

#' @title scale_fill_air_nomads
#' @description Air Nomads fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_air_nomads
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_air_nomads <- function(...){
  ggplot2::discrete_scale("fill", "air_nomads", air_nomads_pal(), ...)
}

## Earth Kingdom ----

earth_kingdom_palette <- c(
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

#' @title earth_kingdom_pal
#' @description Earth Kingdom palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname earth_kingdom_pal
#' @export
#' @importFrom scales manual_pal

earth_kingdom_pal <- function(){
  scales::manual_pal(earth_kingdom_palette)
}

#' @title scale_color_earth_kingdom
#' @description Earth Kingdom color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_earth_kingdom
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_earth_kingdom <- function(...){
  ggplot2::discrete_scale("color", "earth_kingdom", earth_kingdom_pal(), ...)
}

#' @title scale_fill_earth_kingdom
#' @description Earth Kingdom fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_earth_kingdom
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_earth_kingdom <- function(...){
  ggplot2::discrete_scale("fill", "earth_kingdom", earth_kingdom_pal(), ...)
}

## Water Tribe ----

water_tribe_palette <- c(
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

#' @title water_tribe_pal
#' @description Water Tribe palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname water_tribe_pal
#' @export
#' @importFrom scales manual_pal

water_tribe_pal <- function(){
  scales::manual_pal(water_tribe_palette)
}

#' @title scale_color_water_tribe
#' @description Water Tribe color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_water_tribe
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_water_tribe <- function(...){
  ggplot2::discrete_scale("color", "water_tribe", water_tribe_pal(), ...)
}

#' @title scale_fill_water_tribe
#' @description Water Tribe fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_water_tribe
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_water_tribe <- function(...){
  ggplot2::discrete_scale("fill", "water_tribe", water_tribe_pal(), ...)
}
