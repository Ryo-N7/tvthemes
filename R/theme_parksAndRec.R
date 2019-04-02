#' @title theme_parksAndRec
#' @description Parks & Recreation theme
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_parksAndRec
#' @export

theme_parksAndRec <- function(){

  theme(text = element_text(family = "Champion HTF-Heavyweight"),
        axis.text = element_text(size = 8),
        axis.title.y = element_text(angle = 0, vjust= 0.5),
        plot.background = element_rect(color = NA, fill = "#CCFFBB"),#238443
        panel.background = element_rect(color = NA, fill = "#238443"), # #1A5E1FFF darkgreen
        panel.grid.major.x = element_blank())

}
