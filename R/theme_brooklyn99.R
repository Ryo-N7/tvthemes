#' @title theme_brooklyn99
#' @description Brooklyn Nine-Nine theme
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @param font.text main font text, Default: Calibri Light
#' @param font.title title font, Default: Roboto Condensed
#' @param font.legend legend font, Default: Calibri Light
#' @examples
#' \dontrun{
#' if(interactive()){
#'  ggplot(mtcars, aes(x = hp, y = mpg)) +
#'  geom_point() +
#'  theme_brooklyn99()
#'  }
#' }
#' @rdname theme_brooklyn99
#' @seealso [ggplot2::theme]
#' @export
#' @import ggplot2

theme_brooklyn99 <- function(
  font.text = "Calibri Light",
  font.title = "Roboto Condensed",
  font.legend = "Calibri Light",
  title.size = 18
){
  ## use theme_minimal as the base
  theme_minimal() +
    ## main b99 theme
    theme(text = element_text(family = font.text, color = "#F9FEFF",
                              size = 14),
          plot.title = element_text(family = font.title, face = "bold",
                                    size = title.size, color = "#F9FEFF"),
          # background/panel options
          plot.background = element_rect(color = NA, fill = "#0053CD"),
          panel.background = element_rect(color = NA, fill = "#0053CD"),
          # axis options
          axis.text = element_text(family = font.text, color = "#F9FEFF", size = 12),
          axis.title = element_text(size = 14),
          axis.ticks = element_blank(),
          # legend options
          legend.title = element_text(family = font.text, color = "#F9FEFF"),
          legend.text = element_text(family = font.text, color = "#F9FEFF", size = 9),
          legend.position = "bottom",
          legend.key = element_rect(colour = "black", linetype = "solid", size = 1.5),
          legend.background = element_rect(color = "black", fill = "#0053CD",
                                           linetype = "solid"))
}

#' @title brooklyn99_logo
#' @description Brooklyn Nine-Nine logo
#' @return ggplot2 object of logo
#' @rdname brooklyn99_logo
#' @export

brooklyn99_logo <- function(){
  rect <- data.frame(id = as.factor(c(1, 1, 1, 1,
                                      2, 2, 2, 2)),
                     x = c(16, 16, 0,    0,
                           16, 16, 6.6,  6.5),
                     y = c(5.1, 2, 0.4,  3.5,
                           2.5, 0.8, 0,  1.6))

  header <- ggplot(data = rect, aes(x, y, group = id, fill = id)) +
    geom_polygon() +
    scale_fill_manual(values = c("#0053CD", "#000E33"), guide = FALSE) +
    annotate(geom = "text", y = 2, x = 1.8, hjust = 0,
             family = "Univers LT 93 ExtraBlackEx",
             color = "#fcf7e8", size = 40, angle = 5,
             label = glue("
                        BROOKLYN")) +
    annotate(geom = "text", y = 0.9, x = 7.2, hjust = 0,
             family = "Univers",
             color = "#fcf7e8", size = 28, angle = 3.5,
             label = glue("
                        NINE-NINE")) +
    scale_x_continuous(expand = c(0, 0), limits = c(0, 16)) +
    scale_y_continuous(expand = c(0, 0), limits = c(0, 5.5)) +
    theme_void() +
    theme(plot.background = element_rect(color = "#F9FEFF",
                                         fill = "#F9FEFF",
                                         size = 8))

  return(header)
}
