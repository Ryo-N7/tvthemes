spongeBob_palette <- c(
  "#C86925",  ## brownpants
  "#FDF56C",  ## sponge yellow
  "#FC9576",  ## patrick pink
  "#5D57AF",  ## patrick purple
  "#B2CE31",  ## patrick green
  "#FF2027",  ## mr.krabs red
  "#B1D6C5",  ## squidward blue
  "#AB8323",  ## squidward shirt brown
  "#000000"   ## black
)


#C86925  ## brownpants
#FDF56C  ## sponge yellow
#C4433F  ## sponge tie red
#989B46  ## kelp green
#FC9576  ## patrick pink
#5D57AF  ## patrick purple
#B2CE31  ## patrick green
#FF2027  ## mr.krabs red
#000000  ## black
#B1D6C5  ## squidward blue
#AB8323  ## squidward shirt brown

#' @title spongeBob_pal
#' @description Spongebob Squarepants palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname spongeBob_pal
#' @export
#' @importFrom scales manual_pal

spongeBob_pal <- function(){
  scales::manual_pal(spongeBob_palette)
}

#' @title scale_color_spongeBob
#' @description Spongebob Squarepants color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_spongeBob
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_spongeBob <- function(...){
  ggplot2::discrete_scale("color", "spongeBob", spongeBob_pal(), ...)
}

#' @title scale_colour_spongeBob
#' @description for British-spelling compatibility
#' @rdname scale_colour_spongeBob
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_spongeBob <- scale_color_spongeBob

#' @title scale_fill_spongeBob
#' @description Spongebob Squarepants fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_spongeBob
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_spongeBob <- function(...){
  ggplot2::discrete_scale("fill", "spongeBob", spongeBob_pal(), ...)
}
