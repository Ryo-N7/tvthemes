#' @title theme_spongeBob
#' @description Spongebob Squarepants theme
#' @param font.text text font, Default: 'Some Time Later'
#' @param font.title title font, Default: 'Some Time Later'
#' @param font.legend legend font, Default: 'Some Time Later'
#' @param title.size size of title, Default: 14
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
                            title.size = 14) {
  theme(text = element_text(family = font.text, color = "#F9FEFF",
                            size = 12),
        plot.title = element_text(family = font.title,
                                  size = title.size, color = "#F9FEFF"),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#21B8E3"),
        panel.background = element_rect(color = NA, fill = "#21B8E3"),
        # axis options
        axis.text = element_text(family = font.text, color = "#F9FEFF", size = 12),
        axis.title = element_text(size = 14),
        # legend options
        legend.title = element_text(family = font.legend, color = "#F9FEFF"),
        legend.text = element_text(family = font.legend, color = "#F9FEFF", size = 9),
        legend.position = "bottom",
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#21B8E3",
                                         linetype = "solid"))
}
