#' @title theme_rickAndMorty
#' @description Rick & Morty theme
#' @param font.text text font, Default: 'Get Schwifty'
#' @param font.title title font, Default: 'Get Schwifty'
#' @param font.legend legend font, Default: 'Get Schwifty'
#' @param title.size title size, Default: 11
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

theme_rickAndMorty <- function(font.text = "Get Schwifty",
                               font.title = "Get Schwifty",
                               font.legend = "Get Schwifty",
                               title.size = 20,
                               text.size = 12,
                               subtitle.size = 14,
                               axis.title.size = 14,
                               axis.text.size = 10,
                               legend.title.size = 10,
                               legend.text.size = 9) {

  theme(text = element_text(family = font.text, size = text.size),
        title = element_text(family = font.title, size = title.size),
        plot.subtitle = element_text(family = font.title, size = subtitle.size),
        # axis options
        axis.text = element_text(family = font.text, size = axis.title.size, color = "black"),
        axis.title = element_text(family = font.title, size = axis.text.size, color = "black"),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#9bff16"),
        panel.background = element_rect(color = NA, fill = "#cfdbbe"),
        panel.grid.major.x = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend, size = legend.title.size),
        legend.text = element_text(family = font.legend, size = legend.text.size),
        legend.background = element_rect(color = "black", fill = "#9bff16",
                                         linetype = "solid")
        )
}
