#' @title theme_theLastAirbender
#' @description Avatar: The Last Airbender theme, Recommended font: "Slayer"
#' @param text.font text font
#' @param title.font title font
#' @param legend.font legend font
#' @param title.size title font size, Default: 14
#' @param text.size text font size, Default: 10
#' @param subtitle.size subtitle font size, Default: 12
#' @param axis.title.size axis title font size, Default: 10
#' @param axis.text.size axis text font size, Default: 8
#' @param legend.title.size legend title font size, Default: 10
#' @param legend.text.size legend text font size, Default: 8
#' @param title.color title color, Default: NULL
#' @param subtitle.color subtitle.color, Default: "grey20"
#' @param text.color text color, Default: NULL
#' @param axis.title.color axis title color, Default: "grey20"
#' @param axis.text.color axis text color, Default: "grey20"
#' @param legend.title.color legend title color, Default: "grey20"
#' @param legend.text.color legend text color, Default: "grey20"
#' @param legend.position legend position, Default: "bottom"
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_theLastAirbender
#' @seealso [ggplot2::theme]
#' @importFrom ggplot2 element_text element_rect element_blank
#' @export

theme_theLastAirbender <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 14,
  text.size = 10,
  subtitle.size = 12,
  axis.title.size = 10,
  axis.text.size = 8,
  legend.title.size = 10,
  legend.text.size = 8,
  title.color = NULL,
  subtitle.color = "grey20",
  text.color = NULL,
  axis.title.color = "grey20",
  axis.text.color = "grey20",
  legend.title.color = "grey20",
  legend.text.color = "grey20",
  legend.position = "bottom"){

  theme(text = element_text(family = text.font, size = text.size, color = text.color),
        title = element_text(family = title.font, size = title.size, color = title.color),
        plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
        # axis options
        axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#ece5d3"),
        panel.background = element_rect(color = NA, fill = "#ece5d3"),
        panel.grid.major = element_line(color = NULL, size = 1.25),
        panel.grid.minor = element_line(color = NULL, size = 1.25),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.position = legend.position,
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#ece5d3", linetype = "solid")
        )
}
