context("test-simpsons")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)

test_that("theme_simpsons works", {
  thm <- theme_simpsons()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 10)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#fee8c8")
  expect_equal(thm$plot.title$colour, "#FFD235")
  expect_equal(thm$plot.subtitle$colour, "#fee8c8")
  expect_equal(thm$axis.text$colour, "#fee8c8")
  expect_equal(thm$axis.title$colour, "#fee8c8")
  expect_equal(thm$legend.text$colour, "#ffffff")
  expect_equal(thm$legend.title$colour, "#ffffff")
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_simpsons(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 10)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## ticks
  expect_equal(thm$axis.ticks$size, 0.15)
  ## color
  expect_equal(thm$text$colour, "#fee8c8")
  expect_equal(thm$plot.title$colour, "#FFD235")
  expect_equal(thm$plot.subtitle$colour, "#fee8c8")
  expect_equal(thm$axis.text$colour, "#fee8c8")
  expect_equal(thm$axis.title$colour, "#fee8c8")
  expect_equal(thm$legend.text$colour, "#ffffff")
  expect_equal(thm$legend.title$colour, "#ffffff")
  expect_equal(thm$legend.position, "bottom")
})

test_that("simpsons_pal raises warning with large number, x > 10", {
  expect_warning(simpsons_pal()(11))
  expect_warning(simpsons_pal(reverse = TRUE)(11))
  expect_error(simpsons_pal(n = 11))
})

test_that("scale_colour_simpsons equals scale_color_simpsons", {
  expect_eqNe(scale_color_simpsons(), scale_colour_simpsons())
})

test_that("scale_colour_simpsons works", {
  expect_is(scale_color_simpsons(), "ScaleDiscrete")
})

test_that("scale_fill_simpsons works", {
  expect_is(scale_fill_simpsons(), "ScaleDiscrete")
})

## Colors are correct ----
test_that("Simpsons palette outputs correct colors", {
  expect_equal(simpsons_pal()(10),
               c(  "#fed90f", ## #FFD235 simpsons yellow    #ffdb58 mustard    #fed90f metallic yellow
                   "#424f46",  ## #424f46 greyish-blue
                   "#d1b271",  ## #d1b271 lightbrownbeige
                   "#FB4122",  ## #f14e28 orangered    	#F85639 lisa dress
                   "#ABC67D",  ## #7bc242 applegreen     #ABC67D marge dress green
                   "#0363C3", ## #007c7a teal    #0363C3 marge blue
                   "#7A491E", ## #f7b686 beige    #7A491E
                   "#000000",  ## #000000 black
                   "#FC0209",   ## bart red
                   "#46732EFF" ## Flanders green #46732EFF
               ))
})
