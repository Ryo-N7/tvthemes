## add logo fun >>> only add coral flower


add_bikiniBottom <- function(plot_path, logo_path, logo_position, logo_scale = 10) {
  # Useful error message for logo position
  if (!logo_position %in% c("top right", "top left", "bottom right", "bottom left")) {
    stop("Error Message: Uh oh! Logo Position not recognized\n  Try: logo_positon = 'top left', 'top right', 'bottom left', or 'bottom right'")
  }

  # read in raw images
  plot <- magick::image_read(plot_path)
  logo_raw <- magick::image_read(logo_path)

  # get dimensions of plot for scaling
  plot_height <- magick::image_info(plot)$height
  plot_width <- magick::image_info(plot)$width

  # default scale to 1/10th width of plot
  # Can change with logo_scale
  logo <- magick::image_scale(logo_raw, as.character(plot_width/logo_scale))

  # Get width of logo
  logo_width <- magick::image_info(logo)$width
  logo_height <- magick::image_info(logo)$height

  # Set position of logo
  # Position starts at 0,0 at top left
  # Using 0.01 for 1% - aesthetic padding

  if (logo_position == "top right") {
    x_pos = plot_width - logo_width - 0.01 * plot_width
    y_pos = 0.01 * plot_height
  } else if (logo_position == "top left") {
    x_pos = 0.01 * plot_width
    y_pos = 0.01 * plot_height
  } else if (logo_position == "bottom right") {
    x_pos = plot_width - logo_width - 0.01 * plot_width
    y_pos = plot_height - logo_height - 0.01 * plot_height
  } else if (logo_position == "bottom left") {
    x_pos = 0.01 * plot_width
    y_pos = plot_height - logo_height - 0.01 * plot_height
  }

  # Compose the actual overlay
  magick::image_composite(plot, logo, offset = paste0("+", x_pos, "+", y_pos))

}


## add background

#' @title paint_bikiniBottom
#' @description add SpongeBob background
#' @param sponge_gg ggplot object
#' @param width PARAM_DESCRIPTION, Default: 800
#' @param height PARAM_DESCRIPTION, Default: 500
#' @param pointsize PARAM_DESCRIPTION, Default: 16
#' @param outfile PARAM_DESCRIPTION, Default: NULL
#' @param sponge_background PARAM_DESCRIPTION, Default: sponge_images(c("background", "floral", "floral2"))
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details Adapted from ggpomological's paint_pomological() function!
#' @seealso
#'  \code{\link[ggplot2]{theme}},\code{\link[ggplot2]{margin}}
#'  \code{\link[magick]{device}},\code{\link[magick]{editing}},\code{\link[magick]{transform}},\code{\link[magick]{composite}}
#' @rdname paint_bikiniBottom
#' @export
#' @importFrom ggplot2 theme element_rect
#' @importFrom magick image_graph image_read image_resize image_crop image_composite image_write

paint_bikiniBottom <- function(
  sponge_gg,
  width = 800,
  height = 500,
  outfile = NULL,
  sponge_background = sponge_images(c("background", "floral", "floral2")),
  ...
) {
  if (!requireNamespace("magick", quietly = TRUE)) {
    stop("The package magick is required for `paint_pomological()`. ",
         "Please install with `install.packages('magick')`")
  }
  if (!file.exists(sponge_background)) {
    warning(paste0("Cannot find file \"", sponge_background, "\""), call. = FALSE)
  }

  # Paint figure
  sponge_gg <- sponge_gg + ggplot2::theme(plot.background = ggplot2::element_rect(fill = 'transparent', colour = NA))
  gg_fig <- magick::image_graph(width, height, bg = "transparent", ...)
  print(sponge_gg)
  dev.off()

  # Paint background
  if (file.exists(sponge_background)) {
    sponge_bg <- magick::image_read(sponge_background)
    sponge_bg <- magick::image_resize(sponge_bg, paste0(width, "x", height, "!"))
    sponge_bg <- magick::image_crop(sponge_bg, paste0(width, "x", height))

    # Paint figure onto background
    sponge_img <- magick::image_composite(sponge_bg, gg_fig)
  } else sponge_img <- gg_fig

  if (!is.null(outfile)) {
    # Do you want your picture framed?
    magick::image_write(sponge_img, outfile)
  }
  sponge_img
}


#' @title sponge_images
#' @description find SpongeBob background images
#' @param which PARAM_DESCRIPTION, Default: c("background", "floral", "floral2")
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname sponge_images
#' @export

sponge_images <- function(which = c("background", "floral", "floral2")) {
  which <- match.arg(which)
  exts <- c("background" = ".jpg", "floral" = ".jpg", "floral2" = ".gif")

  system.file("backgrounds", paste0("sponge-", which, exts[which]),
              package = "tvthemes")
}
