#' @title theme_theLastAirbender
#' @description Avatar: The Last Airbender theme, Recommended Font: "Slayer"
#' @param font.text text font
#' @param font.title title font
#' @param font.legend legend font
#' @param title.size title font size
#' @param text.size text font size
#' @param subtitle.size subtitle font size
#' @param axis.title.size axis title font size
#' @param axis.text.size axis text font size
#' @param legend.title.size legend title font size
#' @param legend.text.size legend text font size
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_theLastAirbender
#' @export

theme_theLastAirbender <- function(
  font.text = NULL,
  font.title = NULL,
  font.legend = NULL,
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
  legend.text.color = "grey20"){

  theme(text = element_text(family = font.text, size = text.size, color = text.color),
        title = element_text(family = font.title, size = title.size, color = title.color),
        plot.subtitle = element_text(family = font.title, size = subtitle.size, color = subtitle.color),
        # axis options
        axis.text = element_text(family = font.text, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = font.title, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(fill = "#ece5d3"),
        panel.background = element_rect(fill = "#ece5d3"),
        # legend options
        legend.title = element_text(family = font.legend, size = legend.title.size, color = legend.title.color),
        legend.text = element_text(family = font.legend, size = legend.text.size, color = legend.text.color),
        legend.position = "bottom",
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#ece5d3",
                                         linetype = "solid")
        )

}
