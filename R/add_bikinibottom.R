## add logo fun >>> only add coral flower
## use Thomas Mock's add_logo function...

addBikiniBottom <- function(plot_path, logo_path, logo_position, logo_scale = 10) {
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

#' @title paintBikiniBottom
#' @description add SpongeBob background
#' @param sponge.gg ggplot object
#' @param width PARAM_DESCRIPTION, Default: 800
#' @param height PARAM_DESCRIPTION, Default: 500
#' @param pointsize PARAM_DESCRIPTION, Default: 16
#' @param output.file PARAM_DESCRIPTION, Default: NULL
#' @param sponge.background PARAM_DESCRIPTION, Default: sponge_images(c("background", "floral", "floral2"))
#' @param ... PARAM_DESCRIPTION
#' @return Your plot with a Spongebob themed background!
#' @details Adapted from ggpomological's paint_pomological() function!
#' @rdname paintBikiniBottom
#' @export
#' @importFrom ggplot2 theme element_rect
#' @importFrom magick image_graph image_read image_resize image_crop image_composite image_write

paintBikiniBottom <- function(
  sponge.gg,
  width = 800,
  height = 500,
  output.file = NULL,
  sponge.background = sponge_images(c("background", "floral")),
  ...
) {
  ## need magick pkg and background files (should be in inst/backgrounds folder)
  if (!requireNamespace("magick", quietly = TRUE)) {
    stop("The package magick is required for `paint_pomological()`. ",
         "Please install with `install.packages('magick')`")
  }
  if (!file.exists(sponge.background)) {
    warning(paste0("Cannot find file \"", sponge.background, "\""), call. = FALSE)
  }

  ## Change text color depending on background, then strip background from the ggplot object
  if (sponge.background == "floral") {
  bobspog <- sponge.gg +
    ggplot2::theme(text = element_text(color = "black"),
                   plot.title = element_text(color = "black"),
                   plot.subtitle = element_text(color = "black"),
                   axis.title = element_text(color = "black"),
                   axis.text = element_text(color = "black"),
                   legend.title = element_text(color = "black"),
                   legend.text = element_text(color = "black"),
                   plot.background = ggplot2::element_rect(fill = 'transparent', colour = NA))
  } else {
    bobspog <- sponge.gg +
      ggplot2::theme(text = element_text(color = "yellow"),
                     plot.title = element_text(color = "yellow"),
                     plot.subtitle = element_text(color = "yellow"),
                     axis.title = element_text(color = "yellow"),
                     axis.text = element_text(color = "yellow"),
                     legend.title = element_text(color = "yellow"),
                     legend.text = element_text(color = "yellow"),
                     plot.background = ggplot2::element_rect(fill = 'transparent', colour = NA))
  }

  gg_fig <- magick::image_graph(width, height, bg = "transparent", ...)
  print(bobspog)
  dev.off()

  ## Add in the background
  if (file.exists(sponge.background)) {
    sponge_bg <- magick::image_read(sponge.background)
    sponge_bg <- magick::image_resize(sponge_bg, paste0(width, "x", height, "!"))
    sponge_bg <- magick::image_crop(sponge_bg, paste0(width, "x", height))
    sponge_img <- magick::image_composite(sponge_bg, gg_fig)
  } else sponge_img <- gg_fig

  if (!is.null(output.file)) {
    ## save file
    magick::image_write(image = sponge_img, path = output.file)
  }
  return(sponge_img)
}


#' @title sponge_images
#' @description find SpongeBob background images
#' @param which PARAM_DESCRIPTION, Default: c("background", "floral")
#' @rdname sponge_images

sponge_images <- function(which = c("background", "floral")) {
  which <- match.arg(which)
  exts <- c("background" = ".jpg", "floral" = ".jpg")
  system.file("backgrounds", paste0("sponge-", which, exts[which]),
              package = "tvthemes")
}
