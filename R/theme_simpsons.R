theme_simpsons <- function(font.text = "Akbar",
                              font.title = "Akbar",
                              font.legend = "Akbar"){

  theme(text = element_text(family = font.text),
        title = element_text(family = font.title),
        axis.text = element_text(size = 8, color = "grey20"),
        axis.title = element_text(color = "grey20"),
        legend.title = element_text(family = font.legend),
        plot.background = element_rect(color = NA, fill = "#CCFFBB"),
        panel.background = element_rect(color = NA, fill = "#238443"),
        panel.grid.major.x = element_blank())

}
