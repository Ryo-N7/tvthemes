#' @title theme_rickAndMorty
#' @description Rick & Morty theme, Recommended font: "Get Schwifty"
#' @param text.font text font
#' @param title.font title font
#' @param legend.font legend font
#' @param title.size title size
#' @param text.size text font size
#' @param subtitle.size subtitle font size
#' @param axis.title.size axis title font size
#' @param axis.text.size axis text font size
#' @param legend.title.size legend title font size
#' @param legend.text.size legend text font size
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @rdname theme_rickAndMorty
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
  axis.text.color = NULL,
  legend.title.color = NULL,
  legend.text.color = NULL) {

  theme(text = element_text(family = text.font, size = text.size, color = text.color),
        title = element_text(family = title.font, size = title.size, color = title.color),
        plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
        # axis options
        axis.text = element_text(family = text.font, size = axis.title.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.text.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#9bff16"),
        panel.background = element_rect(color = NA, fill = "#cfdbbe"),
        panel.grid.major.x = element_blank(),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.background = element_rect(color = "black", fill = "#9bff16",
                                         linetype = "solid")
        )
}
