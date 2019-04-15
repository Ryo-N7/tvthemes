#' @title theme_rickAndMorty
#' @description Rick & Morty theme
#' @param font.text text font, Default: 'Get Schwifty'
#' @param font.title title font, Default: 'Get Schwifty'
#' @param font.legend legend font, Default: 'Get Schwifty'
#' @param title.size title size, Default: 11
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
                               title.size = 16) {

  theme(text = element_text(family = font.text),
        title = element_text(family = font.title, size = title.size),
        # axis options
        axis.text = element_text(size = 12),
        axis.title = element_text(size = 14),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#9bff16"),
        panel.background = element_rect(color = NA, fill = "#cfdbbe"),
        panel.grid.major.x = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend),
        legend.background = element_rect(color = "black", fill = "#9bff16",
                                         linetype = "solid")
        )

}
