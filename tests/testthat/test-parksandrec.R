context("test-parksandrec")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)

test_that("theme_parksAndRec works", {
  thm <- theme_parksAndRec()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 16)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 12)
  expect_equal(thm$legend.title$size, 14)
  ## color
  #expect_null(thm$text$colour)
  expect_null(thm$plot.title$colour)
  expect_null(thm$plot.subtitle$colour)
  expect_equal(thm$axis.text$colour, "black")
  expect_equal(thm$axis.title$colour, "black")
  expect_null(thm$legend.text$colour)
  expect_null(thm$legend.title$colour)
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_parksAndRec(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 16)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 12)
  expect_equal(thm$legend.title$size, 14)
  ## ticks
  expect_equal(thm$axis.ticks$linewidth, 0.15)
  ## color
  #expect_null(thm$text$colour)
  expect_null(thm$plot.title$colour)
  expect_null(thm$plot.subtitle$colour)
  expect_equal(thm$axis.text$colour, "black")
  expect_equal(thm$axis.title$colour, "black")
  expect_null(thm$legend.text$colour)
  expect_null(thm$legend.title$colour)
  expect_equal(thm$legend.position, "bottom")
})

test_that("theme_parksAndRec-light works", {
  thm <- theme_parksAndRecLight()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 16)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 12)
  expect_equal(thm$legend.title$size, 14)
  ## color
  expect_equal(thm$text$colour, "grey20")
  expect_equal(thm$plot.title$colour, "grey20")
  expect_equal(thm$plot.subtitle$colour, "grey20")
  expect_equal(thm$axis.text$colour, "grey20")
  expect_equal(thm$axis.title$colour, "grey20")
  expect_equal(thm$legend.text$colour, "grey20")
  expect_equal(thm$legend.title$colour, "grey20")
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_parksAndRecLight(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 16)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 12)
  expect_equal(thm$legend.title$size, 14)
  ## ticks
  expect_equal(thm$axis.ticks$linewidth, 0.15)
  ## color
  expect_equal(thm$text$colour, "grey20")
  expect_equal(thm$plot.title$colour, "grey20")
  expect_equal(thm$plot.subtitle$colour, "grey20")
  expect_equal(thm$axis.text$colour, "grey20")
  expect_equal(thm$axis.title$colour, "grey20")
  expect_equal(thm$legend.text$colour, "grey20")
  expect_equal(thm$legend.title$colour, "grey20")
  expect_equal(thm$legend.position, "bottom")
})

## parksAndRecLight ----

test_that("theme_parksAndRec-light works", {
  thm <- theme_parksAndRecLight()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 16)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 12)
  expect_equal(thm$legend.title$size, 14)
  ## color
  expect_equal(thm$text$colour, "grey20")
  expect_equal(thm$plot.title$colour, "grey20")
  expect_equal(thm$plot.subtitle$colour, "grey20")
  expect_equal(thm$axis.text$colour, "grey20")
  expect_equal(thm$axis.title$colour, "grey20")
  expect_equal(thm$legend.text$colour, "grey20")
  expect_equal(thm$legend.title$colour, "grey20")
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_parksAndRecLight(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 16)
  expect_equal(thm$plot.title$size, 20)
  expect_equal(thm$plot.subtitle$size, 14)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 12)
  expect_equal(thm$legend.title$size, 14)
  ## ticks
  expect_equal(thm$axis.ticks$linewidth, 0.15)
  ## color
  expect_equal(thm$text$colour, "grey20")
  expect_equal(thm$plot.title$colour, "grey20")
  expect_equal(thm$plot.subtitle$colour, "grey20")
  expect_equal(thm$axis.text$colour, "grey20")
  expect_equal(thm$axis.title$colour, "grey20")
  expect_equal(thm$legend.text$colour, "grey20")
  expect_equal(thm$legend.title$colour, "grey20")
  expect_equal(thm$legend.position, "bottom")
})

test_that("parksAndRec_pal raises warning with large number, x > 10", {
  expect_warning(parksAndRec_pal()(11))
  expect_warning(parksAndRec_pal(reverse = TRUE)(11))
  expect_error(parksAndRec_pal(n = 11))
})

test_that("scale_colour_parksAndRec equals scale_color_parksAndRec", {
  expect_eqNe(scale_color_parksAndRec(), scale_colour_parksAndRec())
})

test_that("scale_colour_parksAndRec/light works", {
  expect_is(scale_color_parksAndRec(), "ScaleDiscrete")
})

test_that("scale_fill_parksAndRec/light works", {
  expect_is(scale_fill_parksAndRec(), "ScaleDiscrete")
})

## Colors are correct ----
test_that("scale_color_kimPossible outputs correct colors", {
  expect_equal(parksAndRec_pal()(10),
               c(  "#bdbdbd", ## yellowtan #fcf7e8  grey #969696    #bdbdbd
                   "#a51209", ## maroon
                   "#ffdb58",  ## lighter green (turqoise-ish) #238443     #ffdb58  mustard
                   "#ec7014",  ## #4C3114 darker brown   #ec7014 darker orange
                   "#7A491E",  ## regular brown
                   "#C24841", ## darker reddish-orange
                   "#005502", ## darker green
                   "#f7fcb9",  ## lime green <<<<
                   "#69983a", ## lightish gree #1A5E1F darkgreen
                   "#b5651d"  ## beige #fee0d2     #b5651d light brown
               ))
})
