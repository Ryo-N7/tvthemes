#' @title theme_spongeBob
#' @description Spongebob Squarepants theme, Recommended Font: "Some Time Later"
#' @param font.text text font
#' @param font.title title font
#' @param font.legend legend font
#' @param title.size size of title, Default: 14
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
#' @rdname theme_spongeBob
#' @export

theme_spongeBob <- function(
  font.text = NULL,
  font.title = NULL,
  font.legend = NULL,
  title.size = 18,
  text.size = 12,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#F9FEFF",
  subtitle.color = "#F9FEFF",
  text.color = "#F9FEFF",
  axis.title.color = NULL,
  axis.text.color = "#F9FEFF",
  legend.title.color = "#F9FEFF",
  legend.text.color = "#F9FEFF") {
  theme(text = element_text(family = font.text, size = text.size, color = text.color),
        plot.title = element_text(family = font.title, size = title.size, color = title.color),
        plot.subtitle = element_text(family = font.title, size = subtitle.size, color = subtitle.color),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#21B8E3"),
        panel.background = element_rect(color = NA, fill = "#21B8E3"),
        # axis options
        axis.text = element_text(family = font.text, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = font.title, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend, size = legend.title.size, color = legend.title.color),
        legend.text = element_text(family = font.legend, size = legend.text.size, color = legend.text.color),
        legend.position = "right",
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#21B8E3",
                                         linetype = "solid"))
}
