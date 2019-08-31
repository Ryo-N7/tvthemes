#' @title theme_rickAndMorty
#' @description Rick & Morty theme, Recommended font: "Get Schwifty"
#' @details Actual font is based on Justin Roiland's handwriting!
#' @param text.font text font, Default: NULL
#' @param title.font title font, Default: NULL
#' @param legend.font legend font, Default: NULL
#' @param title.size title size, Default: 20
#' @param text.size text font size, Default: 12
#' @param subtitle.size subtitle font size, Default: 14
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 10
#' @param legend.title.size legend title font size, Default: 10
#' @param legend.text.size legend text font size, Default: 9
#' @param title.color title color, Default: NULL
#' @param subtitle.color subtitle.color, Default: NULL
#' @param text.color text color, Default: NULL
#' @param axis.title.color axis title color, Default: NULL
#' @param axis.text.color axis text color, Default: "black"
#' @param legend.title.color legend title color, Default: NULL
#' @param legend.text.color legend text color, Default: NULL
#' @param legend.position legend position, Default: "bottom"
#' @param ticks add axis ticks, Default: FALSE
#' @examples
#' library(ggplot2)
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_rickAndMorty() +
#'      theme_rickAndMorty()
#' @rdname theme_rickAndMorty
#' @seealso [ggplot2::theme]
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit
#' @export

theme_rickAndMorty <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 20,
  text.size = 12,
  subtitle.size = 14,
  axis.title.size = 14,
  axis.text.size = 10,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = NULL,
  subtitle.color = NULL,
  text.color = NULL,
  axis.title.color = NULL,
  axis.text.color = "black",
  legend.title.color = NULL,
  legend.text.color = NULL,
  legend.position = "bottom",
  ticks = FALSE){

  pickleRick <- ggplot2::theme_minimal() +
  theme(text = element_text(family = text.font, size = text.size, color = text.color),
        plot.title = element_text(family = title.font, size = title.size, color = title.color),
        plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
        # axis options
        axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#9bff16"),
        panel.background = element_rect(color = NA, fill = "#cfdbbe"),
        panel.grid.major.x = element_blank(),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.position = legend.position,
        legend.background = element_rect(color = "black", fill = "#9bff16", linetype = "solid")
        )

  if (ticks == FALSE) {
    pickleRick <- pickleRick + theme(axis.ticks = element_blank(),
                                 axis.ticks.x = element_blank(),
                                 axis.ticks.y = element_blank())
  } else {
    pickleRick <- pickleRick + theme(axis.ticks = element_line(size = 0.15, color = "white"),
                                 axis.ticks.x = element_line(size = 0.15, color = "white"),
                                 axis.ticks.y = element_line(size = 0.15, color = "white"),
                                 axis.ticks.length = grid::unit(4, "pt"))
  }
}
