theme_rickAndMorty <- function(font.text = "Get Schwifty",
                               font.title = "Get Schwifty",
                               font.legend = "Get Schwifty",
                               title.size = 11) {

  theme(text = element_text(family = font.text),
        title = element_text(family = font.title, size = title.size),
        # axis options
        axis.text = element_text(size = 8, color = "grey20"),
        axis.title = element_text(color = "grey20"),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#CCFFBB"),  #238443
        panel.background = element_rect(color = NA, fill = "#238443"), # #1A5E1FFF darkgreen
        panel.grid.major.x = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend)
        )

}
