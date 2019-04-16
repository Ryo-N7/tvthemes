#' @title theme_spongeBob
#' @description Spongebob Squarepants theme
#' @param font.text text font, Default: 'Some Time Later'
#' @param font.title title font, Default: 'Some Time Later'
#' @param font.legend legend font, Default: 'Some Time Later'
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

theme_spongeBob <- function(font.text = "Some Time Later",
                            font.title = "Some Time Later",
                            font.legend = "Some Time Later",
                            title.size = 18,
                            text.size = 12,
                            subtitle.size = 12,
                            axis.title.size = 14,
                            axis.text.size = 12,
                            legend.title.size = 10,
                            legend.text.size = 9) {
  theme(text = element_text(family = font.text, color = "#F9FEFF",
                            size = text.size),
        plot.title = element_text(family = font.title,
                                  size = title.size, color = "#F9FEFF"),
        plot.subtitle = element_text(size = subtitle.size),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#21B8E3"),
        panel.background = element_rect(color = NA, fill = "#21B8E3"),
        # axis options
        axis.text = element_text(family = font.text, color = "#F9FEFF", size = axis.text.size),
        axis.title = element_text(size = axis.title.size),
        axis.ticks = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend, color = "#F9FEFF", size = legend.title.size),
        legend.text = element_text(family = font.legend, color = "#F9FEFF", size = legend.text.size),
        legend.position = "bottom",
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#21B8E3",
                                         linetype = "solid"))
}
