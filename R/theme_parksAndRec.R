## Titillium Web BLACK
## Champion HTF-Heavyweight

#' @title theme_parksAndRec
#' @description Parks & Recreation theme, Recommended font: "Titillium Web"
#' @param text.font text font
#' @param title.font title font
#' @param legend.font legend font
#' @param title.size title font size, Default: 20
#' @param text.size text font size, Default: 16
#' @param subtitle.size subtitle font size, Default: 14
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 12
#' @param legend.title.size legend title font size, Default: 14
#' @param legend.text.size legend text font size, Default: 12
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_parksAndRec
#' @seealso [ggplot2::theme]
#' @export

theme_parksAndRec <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 20,
  text.size = 16,
  subtitle.size = 14,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 14,
  legend.text.size = 12,
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
        axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#238443"),
        panel.background = element_rect(color = NA, fill = "#CCFFBB"),
        panel.grid.major.x = element_blank(),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.15),
        legend.background = element_rect(color = "black", fill = "#CCFFBB",
                                         linetype = "solid")
  )
}


#' @title theme_parksAndRec_light
#' @description Parks & Recreation light theme, Recommended font: "Titillium Web"
#' @param text.font text font
#' @param title.font title font
#' @param legend.font legend font
#' @param title.size title font size, Default: 20
#' @param text.size text font size, Default: 16
#' @param subtitle.size subtitle font size, Default: 14
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 12
#' @param legend.title.size legend title font size, Default: 14
#' @param legend.text.size legend text font size, Default: 12
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @rdname theme_parksAndRec_light
#' @seealso [ggplot2::theme]
#' @export

theme_parksAndRec_light <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 20,
  text.size = 16,
  subtitle.size = 14,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 14,
  legend.text.size = 12,
  title.color = "grey20",
  subtitle.color = "grey20",
  text.color = "grey20",
  axis.title.color = "grey20",
  axis.text.color = "grey20",
  legend.title.color = "grey20",
  legend.text.color = "grey20") {

  theme(text = element_text(family = text.font, size = text.size, color = text.color),
        title = element_text(family = title.font, size = title.size, color = title.color),
        plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
        # axis options
        axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#CCFFBB"),
        panel.background = element_rect(color = NA, fill = "#238443"),
        panel.grid.major.x = element_blank(),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.key = element_rect(colour = "grey20", linetype = "solid", size = 1.15),
        legend.background = element_rect(color = "grey20", fill = "#CCFFBB",
                                         linetype = "solid")
  )
}
